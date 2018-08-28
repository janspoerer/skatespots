class EventsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @events = Event.all
    authorize @events
  end

  def create
  end

  # def edit
  # end

  # def update
  # end

  def destroy
  end

end
