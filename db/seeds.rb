require 'faker'
require 'as-duration'

5.times do
  User.create(
    email: Faker::Internet.email,
    password: 'Orange2018vol-3'
  )
  
end

5.times do
  User.first.trips.create(
    name: Faker::FunnyName.name
  )
end

(1..5).to_a.each do |i|
  trip_start_date = Faker::Date.between(5.days.from_now, 1.year.from_now)
  place = Place.create(
    name: Faker::Address.city,
    start_date: trip_start_date + i,
    end_date: trip_start_date + i + 1,
    country: Faker::Address.country
  )
  User.first.trips.first.places << place
end

Place.all.each do |place|
  place.transports << Transport.create(
    type_of_transport: Faker::FunnyName.name,
    start_location: Faker::Address.city,
    end_location: place.name,
    cost: Faker::Number.positive,
    start_time: place.end_date,
    end_time: place.end_date + 3.hours
  )
end
