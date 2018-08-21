class Spot < ApplicationRecord
  belongs_to :city

  mount_uploader :photo, PhotoUploader
end
