class EventsController < ApplicationController

  # View all events
  def index
    @events = Event.all
  end

  # View single Event
  def show
    @event = Event.find(params[:id])
  end

  # New Event page
  def new
    @event = Event.new
  end

  # Edit Event page
  def edit
    @event = Event.find(params[:id])
  end

  # Submit Event creation form
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  # Submit Event update form
  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  # Delete Event
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
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
