class EventsController < ApplicationController
  # Prevents public from editing/deleting
  http_basic_authenticate_with(
      name: ENV.fetch('HTTP_USERNAME', 'admin'),
      password: ENV.fetch('HTTP_PASSWORD', ''),
      except: [:index, :show]
  )

  # Register helper methods for events
  helper_method :form_title
  helper_method :submit_path

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
    render 'edit'
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

  def submit_path
    if @event.id
      event_path(@event)
    else
      events_path
    end
  end

  def form_title
    if @event.id
      "Edit Event"
    else
      "Create Event"
    end
  end

  private
    # Valid create/edit parameters for events
    def event_params
      params[:event].permit(
          :title,
          :description,
          :location,
          :cost,
          :url,
          :image,
          :registration_starts_at,
          :registration_ends_at,
          :starts_at,
          :ends_at
      )
    end

    # Rules for ordering events
    def order_by
      if params[:order_by]
        if params[:order_by] == 'created_at'
          # If created at, get newest first
          params[:order_by] + ' DESC'
        else
          # Otherwise, get closest to now
          params[:order_by] + ' ASC'
        end
      else
        # Default to start date, ascending
        'starts_at ASC'
      end
    end

end
