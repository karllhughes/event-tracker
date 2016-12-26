class EventsController < ApplicationController

  # View all events
  def index
    @events = Event.order(order_by).all
  end

  # View single Event
  def show
    @event = Event.find(params[:id])
  end

  # New Event page
  def new
    @event = Event.new
    @title = "Create event"
    render 'edit'
  end

  # Edit Event page
  def edit
    @event = Event.find(params[:id])
    @title = "Edit event"
  end

  # Submit Event creation form
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event
    else
      render 'edit'
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

    def order_by
      if params[:order_by]
        params[:order_by] + ' ASC'
      else
        'starts_at ASC'
      end
    end

end
