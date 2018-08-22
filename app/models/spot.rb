class Spot < ApplicationRecord
  belongs_to :city
  has_many :reviews

  mount_uploader :photo, PhotoUploader
end
