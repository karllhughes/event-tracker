class EventsController < ApplicationController

  # View all events
  def index
  end

  # View single Event
  def show
  end

  # New Event page
  def new
  end

  # Submit Event creation form
  def create
    @event = Event.new(event_params)

    @event.save
    redirect_to @event
  end

  private

    def event_params
      params[:event].permit(
          :title,
          :description,
          :url,
          :starts_at,
          :ends_at,
          :location
      )
    end

end
