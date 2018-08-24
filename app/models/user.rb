class User < ApplicationRecord
  belongs_to :city, optional: true
  has_many :user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  def avatar_url
    photo_url || "https://res.cloudinary.com/hienn/image/upload/v1535036453/logo_Anonymous.png"
  end
end
