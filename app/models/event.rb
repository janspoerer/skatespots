class Event < ApplicationRecord
  belongs_to :user
  belongs_to :spot
  has_many :participants
end
