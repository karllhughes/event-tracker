require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get events_path
    assert_response :success
  end

  test "should get single event" do
    event = Event.first
    get event_path(event.id)
    assert_response :success
  end

  test "should show new event page" do
    get new_event_path
    assert_response :success
  end

  test "should show edit event page" do
    event = Event.first
    get edit_event_path(event.id)
    assert_response :success
  end

  test "should submit create event form" do
    # Coming soon
    assert true
  end

  test "should submit edit event form" do
    # Coming soon
    assert true
  end

  test "should delete event" do
    event = Event.first
    delete event_path(event.id)
    assert_redirected_to events_path
  end

end
