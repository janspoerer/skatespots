class LikesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_like, only: %i(calculate_number_of_likes upvote downvote)
  before_action :set_spot, only: %i(calculate_number_of_likes upvote downvote)

  include Pundit
  after_action :verify_authorized, except: %i(number_of_likes set_spot), unless: :skip_pundit?

  def upvote
    if vote_value > 0
      @like.update(user: current_user, spot: @spot, value: 0)
    else
      @like.update(user: current_user, spot: @spot, value: 1)
    end
    redirect_to spot_path(@spot) # AJAX would be even better
    authorize @spot
  end

  def downvote
    if vote_value < 0
      @like.update(user: current_user, spot: @spot, value: 0)
    else
      @like.update(user: current_user, spot: @spot, value: -1)
    end
    redirect_to spot_path(@spot) # AJAX would be even better
    authorize @spot
  end

  private

  def set_like
    @like = Like.find(params[:id])
  end

  def set_spot
    @spot = @like.spot
  end

  def vote_value
    @like.value
  end
end
