# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'as-duration'

(1..5).to_a.each do |i|
  trip_start_date = Faker::Date.between(5.days.from_now, 1.year.from_now)
  place = Place.create(
    name: Faker::Address.city,
    start_date: trip_start_date + i,
    end_date: trip_start_date + i + 1,
    country: Faker::Address.country
  )
  puts place
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
