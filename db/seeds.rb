require 'faker'
require 'as-duration'

User.create(
  email: 'user@user.com',
  password: 'Orange2018'
  password: 'Orange2018vol-3'
)

5.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: 'Orange2018'
  )
    password: 'Orange2018vol-3'
  )
end

User.all.each do |user|
  5.times do
    start_date = Faker::Time.between(1.year.ago, 1.year.from_now, :all)
    user.trips.create(
      name: Faker::FunnyName.name,
      start_date: start_date,
      end_date: start_date + 2.weeks
    user.trips.create(
      name: Faker::FunnyName.name,
      start_date: Faker::Time.forward(1, :morning),
      end_date: Faker::Time.forward(20, :morning)
    )
  end
end

Trip.all.each do |trip|
  5.times do |i|
    trip.places.create(
      name: Faker::WorldCup.city,
      country: Faker::Address.country,
      start_date: trip.start_date + i.days,
      end_date: trip.end_date + i.days + 1.day
  5.times do
    trip.places.create(
      name: Faker::WorldCup.city,
      country: Faker::Address.country,
      start_date: Trip.first.start_date,
      end_date: Trip.first.end_date
    )
  end
end

Place.all.each do |place|
  2.times do
    place.hotels.create(
      name: Faker::Witcher.monster
    )
    place.attractions.create(
      title: Faker::Restaurant.name,
      start_date: place.start_date,
      end_date: place.end_date
    )
    place.transports.create(
      type_of_transport: Faker::Dessert.variety,
      start_time: place.start_date,
      end_time: place.end_date
    )
  end
end
