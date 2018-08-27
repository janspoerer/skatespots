class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :spot #depedent: :destroy
end
