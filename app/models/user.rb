class User < ApplicationRecord
  belongs_to :city, optional: true
  has_many :user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  def avatar_url
    photo_url || "https://www.synbio.cam.ac.uk/images/avatar-generic.jpg/image"
  end
end
