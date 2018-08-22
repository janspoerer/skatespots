class ProfilesController < ApplicationController
  before_action :set_user, only: [:update]
  skip_after_action :verify_authorized, only: :show
  skip_after_action :verify_policy_scoped, only: :show

  def show
    @user = current_user
  end

  def update
    authorize @user
    if @user.update(user_params)
      flash[:notice] = 'Your profile has been successfully updated!'
      redirect_to dashboard_path
    else
      render 'dashboard/index'
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :facebook, :twitter, :instagram, :photo, :photo_cache)
  end
end
