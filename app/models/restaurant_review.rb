class RestaurantReview < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :likes, dependent: :destroy
  def isLike(cus)
    if self.likes.where(user_id: cus.id).present?
      return false
    end
    true
  end
end
