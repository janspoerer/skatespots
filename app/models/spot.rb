# frozen_string_literal: true

class Spot < ApplicationRecord
  belongs_to :city

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

  def favorite_by(a_user)
    favorites.find_by(user: a_user)
  end

  def liked_by(a_user)
    likes.find_by(user: a_user)
  end

  def number_of_likes
    likes.count
  end
end
