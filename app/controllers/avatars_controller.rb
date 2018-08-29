class AvatarsController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def skip_pundit?
    true
  end
end
