class ReviewsController < ApplicationController

  def create
    @spot = Spot.find(params[:spot_id])
    @review = Review.new(review_params)
    @review.spot = @spot
    if @review.save
      redirect_to spot_path(@spot)
    else
      render 'spots/show'
    end
  end

# REMEMBER TO ADD TO THE POSTS CONTROLLER
#   def show
#     @spot = Spot.find(params[:id])
#     @review = Review.new
#   end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
