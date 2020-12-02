class LikesController < ApplicationController
    before_action :authenticate_user!
  def like
    Like.create(user_id: current_user.id, restaurant_review_id: params[:id])
    redirect_to restaurant_path(RestaurantReview.find(params[:id]).restaurant_id)
  end
  def unlike
    like = Like.find_by_restaurant_review_id(params[:id])
    like.destroy
    redirect_to restaurant_path(RestaurantReview.find(params[:id]).restaurant_id)
  end
end
