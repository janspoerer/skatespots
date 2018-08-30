class EventsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: [:index, :create]

  def index
    @events = Event.all
    authorize @events
  end

  def show
    @spot = Spot.find(params[:spot_id])
    @event = Event.find(params[:id])
    # @participant = Participant.new
    # @participant.event = @event
    # @participant.user = current_user
    # @participant.save
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    if @event.save!
      redirect_to spot_path(@event.spot)
    else
      render :new
    end
  end

  private

  def event_params
    params[:event].permit(:name, :description, :event_date, :start_time, :end_time, :status, :user_id, :spot_id)
  end

  def skip_pundit?
    true
  end
end
