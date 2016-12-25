#
# Database seeds
#

# Create 25 events
25.times do |i|
  Event.create(
      title: Faker::Name.unique.name,
      description: Faker::Lorem.paragraph,
      location: Faker::Lorem.word,
      cost: Faker::Number.decimal(2),
      url: Faker::Internet.url,
      image: Faker::LoremPixel.image,
      registration_starts_at: Faker::Date.forward(0),
      registration_ends_at: Faker::Date.forward(0),
      starts_at: Faker::Date.forward(0),
      ends_at: Faker::Date.forward(0),
  )
end
