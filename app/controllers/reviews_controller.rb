class ReviewsController < ApplicationController
  after_action :verify_authorized, unless: :skip_pundit?

  def create
    @spot = Spot.find(params[:spot_id])
    @review = Review.new(review_params)
    @review.spot = @spot
    @review.user = current_user
    authorize @review
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
    redirect_to spot_path(@spot)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
