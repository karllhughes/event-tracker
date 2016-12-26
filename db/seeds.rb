#
# Database seeds
#

# Create 25 events
Event.delete_all
25.times do |i|
  Event.create(
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph,
      location: Faker::Lorem.word + ', ' + Faker::Lorem.word,
      cost: Faker::Number.decimal(2),
      url: Faker::Internet.url,
      image: Faker::LoremPixel.image('300x150'),
      registration_starts_at: Faker::Date.forward(365),
      registration_ends_at: Faker::Date.forward(365),
      starts_at: Faker::Date.forward(365),
      ends_at: Faker::Date.forward(365),
  )
end
