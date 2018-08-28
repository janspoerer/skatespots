class LikesController < ApplicationController
  def create
    @spot = Spot.find(params[:spot_id])
    @like = Like.new(spot: @spot, user: current_user)
    authorize @like
    if @like.save
      redirect_to spot_path(@spot)
    else
      @review = Review.new
      render "spots/show"
    end
  end

  def destroy
    @like = Like.find(params[:id])
    authorize @like
    @like.destroy
    redirect_to spot_path(@like.spot)
  end
end
