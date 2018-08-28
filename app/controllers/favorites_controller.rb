class FavoritesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :destroy]

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
    skip_pundit?
    @spot = Spot.find(params[:spot_id])
    @favorite = Favorite.find(params[:id])
    authorize @favorite
    @favorite.destroy
    redirect_to spot_path(@spot.id)
  end

  private

  def skip_pundit?
    true
  end
end
