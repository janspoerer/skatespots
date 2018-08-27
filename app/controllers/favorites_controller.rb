class FavoritesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @spots = policy_scope(Spot)
    authorize @spots
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @favorite = Favorite.new
    authorize @favorite
    @favorite.spot = @spot
    @favorite.user = current_user
    @favorite.save
    redirect_to spot_path(@spot)
  end

  def destroy
    @spot = Spot.find(params[:spot_id])
    @favorite = Favorite.find(1)
    raise
    @favorite.destroy
    redirect_to spot_path(@spot)
  end

  private

  def skip_pundit?
    false
  end
end
