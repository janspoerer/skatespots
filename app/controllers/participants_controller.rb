class ParticipantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @spot = Spot.find(params[:spot_id])
    @event = Event.find(params[:event_id])
    @participant = Participant.new
    @participant.event = @event
    @participant.user = current_user
    @participant.save!
    redirect_to spot_event_path(@spot, @event)
  end

  def destroy
  end

  private

  def skip_pundit?
    true
  end
end
