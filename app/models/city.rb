class City < ApplicationRecord
  has_many :users
  has_many :spots
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
