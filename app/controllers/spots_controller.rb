# froze_string_literal: true

class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_spot, only: %i[show edit update destroy]

  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    if params[:query].present?
      @spots = policy_scope(Spot).search_by_city_and_name(params[:query])
    else
      @spots = policy_scope(Spot)
      authorize @spots
    end

    @markers = Spot.where.not(latitude: nil, longitude: nil).map do |spot|
     {
       lat: spot.latitude,
       lng: spot.longitude
       # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
     }
    end
  end

  def show
    @review = Review.new
    @markers = [{
      lat: @spot.latitude,
      lng: @spot.longitude
    }]
  end

  def new
    @spot = Spot.new
    authorize @spot
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    authorize @spot
    if @spot.save
      redirect_to spot_path(@spot)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to spot_path(@spot)
    else
      render :edit
    end
  end

  def destroy
    if @spot.destroy
      redirect_to spots_path
    else
      render :index
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
    authorize @spot
  end

  # rubocop:disable Metrics/MethodLength
  def spot_params
    params[:spot].permit(
      :name,
      :description,
      :address,
      :city,
      :category,
      :photo,
      :photo_cache
    )
  end
  # rubocop:enable Metrics/MethodLength

  def skip_pundit?
    false
  end
end
