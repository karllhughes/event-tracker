module ApplicationHelper

  def site_name
    EventTracker::Application.config.meta['site_name']
  end

  def title(page_title)
    full_title = site_name
    if page_title
      full_title += ' | ' + page_title.to_s
    end
    content_for :title, full_title
  end

end
