require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test "should not save event without valid title and url" do
    event = Event.new
    assert_not event.save
  end

  test "should save event with valid title and url" do
    event = Event.new(title: Faker::Lorem.sentence, url: Faker::Internet.url)
    assert event.save
  end
end
