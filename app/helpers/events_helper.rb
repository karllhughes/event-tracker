module EventsHelper

  def all_events_title(order_by)
    if order_by == 'registration_starts_at'
      "Registration Starts Soon"
    elsif order_by == 'registration_ends_at'
      "Registration Ends Soon"
    elsif order_by == 'created_at'
      "Newest First"
    elsif order_by == 'title'
      "Alphabetical"
    else
      nil
    end
  end

end
