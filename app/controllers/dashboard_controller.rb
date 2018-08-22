class DashboardController < ApplicationController
  skip_after_action :verify_authorized, only: :index
  skip_after_action :verify_policy_scoped, only: :index
  # after_action :verify_authorized, :except => :index, unless: :devise_controller?
  before_action :authenticate_user!

  def index
    @user = current_user
  end
end
