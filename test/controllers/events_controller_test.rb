require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get events_path
    assert_response :success
  end

  test "should get single event" do
    get event_path
    assert_response :success
  end

end
