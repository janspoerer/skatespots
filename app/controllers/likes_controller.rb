class LikesController < ApplicationController
  before_action :set_spot, only: %i(upvote downvote)
  before_action :set_like, only: %i(upvote downvote)

  include Pundit
  after_action :verify_authorized, except: %i(number_of_likes set_spot), unless: :skip_pundit?

  def number_of_likes

  end

  def upvote
    vote_value
    if vote_value.present?
      if vote_value > 0
        Like.update(user: @user, spot: spot, value: 0)
      else
        Like.update(user: @user, spot: spot, value: 1)
    else
      Like.create(user: @user, spot: spot, value: 1)
    end
    autorize @like
  end

  def downvote
    vote_value
    if vote_value.present?
      if vote_value < 0
        Like.update(user: @user, spot: spot, value: 0)
      else
        Like.update(user: @user, spot: spot, value: -1)
    else
      Like.create(user: @user, spot: spot, value: -1)
    end
    autorize @like
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def vote_value
    Like.joins(:user, :spot).first
  end
end
