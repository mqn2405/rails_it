class RestaurantReviewsController < ApplicationController
  before_action :authenticate_user!
  def create
    review = RestaurantReview.new
    review.restaurant_id = set_params[:restaurant_id]
    review.user_id = current_user.id
    review.content = set_params[:content]
    review.save
    redirect_to restaurant_path(review.restaurant_id)
  end
  protected
  def set_params
    params.require(:restaurant_review).permit(:content, :restaurant_id).merge(user_id: current_user.id)
  end
end
