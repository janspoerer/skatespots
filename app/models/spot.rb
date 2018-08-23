class Spot < ApplicationRecord
  belongs_to :city
  has_many :reviews
  has_many :likes
  has_many :favorites

  mount_uploader :photo, PhotoUploader
end
