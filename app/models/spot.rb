# frozen_string_literal: true

class Spot < ApplicationRecord
  belongs_to :city, optional: true

  has_many :likes
  has_many :favorites
  has_many :reviews

  validates :address, :name, presence: true

  # TODO: Check if the address needs to be geocoded
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_city_and_name,
    # rubocop:disable Layout/AlignParameters
    against: %i[city_id name],
    using: {
      tsearch: { prefix: true }
    }
  # rubocop:enable Layout/AlignParameters

  # Upload multiple photos
  mount_uploaders :photos, PhotoUploader

  def average_rating
    self.reviews.average('rating')
  end

end
