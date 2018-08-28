class ReviewsController < ApplicationController
  after_action :verify_authorized, unless: :skip_pundit?
  before_action :set_review, only: %i[destroy]

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

  def destroy
    @review.destroy
    @user = current_user
  end

  private

  def set_review
    @review = Review.find(params[:id])
    authorize @review
    redirect_to spot_path(@spot)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
