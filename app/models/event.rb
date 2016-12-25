require 'uri'

class Event < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true, :format => URI::regexp(%w(http https))
end
