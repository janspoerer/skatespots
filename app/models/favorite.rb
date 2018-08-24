class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :spot #, depedent: :destroy - please look up the right syntax if you need it
end
