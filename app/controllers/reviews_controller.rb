class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save if @review.valid?

    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
