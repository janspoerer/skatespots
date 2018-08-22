class Spot < ApplicationRecord
  include PgSearch

  # TODO: Check if the address needs to be geocoded
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :city

  validates :city, presence: true

  pg_search_scope :search_by_city_and_name,
    # rubocop:disable Layout/AlignParameters
    against: %i[city_id name],
    using: {
      tsearch: { prefix: true }
    }
  # rubocop:enable Layout/AlignParameters
end
