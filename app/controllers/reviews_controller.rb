class ReviewsController < ApplicationController

  def create
    @spot = Spot.find(params[:spot_id])
    @review = Review.new(review_params)
    @review.spot = @spot
    if @review.save
      respond_to do |format|
        format.html { redirect_to spot_path(@spot) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'spots/show' }
        format.js  # <-- idem
      end
    end
  end

# REMEMBER TO ADD TO THE SPOTS CONTROLLER
#   def show
#     @spot = Spot.find(params[:id])
#     @review = Review.new
# #   end

#   def destroy
#     @spot = Spot.find(params[:id])
#     @spot.destroy
#   end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
