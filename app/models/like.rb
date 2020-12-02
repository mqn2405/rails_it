class Like < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant_review
end
