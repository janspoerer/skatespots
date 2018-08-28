class CitiesController < ApplicationController
  before_action :set_city, only: [:new, :create]

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.user = current_user
    @city.save!
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params[:city].permit(:name, :photo, :user_id, :spot_id)
  end
end
