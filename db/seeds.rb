require 'faker'
require 'as-duration'

User.create(
  email: 'user@user.com',
  password: 'Orange2018vol-3'
)

5.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: 'Orange2018vol-3'
  )

end

User.all.each do |user|
  5.times do
    user.trips.create(
      name: Faker::FunnyName.name,
      start_date: Faker::Time.forward(1, :morning),
      end_date: Faker::Time.forward(20, :morning)
    )
  end
end

Trip.all.each do |trip|
  5.times do
    trip.places.create(
      name: Faker::WorldCup.city,
      country: Faker::Address.country,
      start_date: Trip.first.start_date,
      end_date: Trip.first.end_date
    )
  end
end

Place.all.each do  |place|
  5.times do
    place.hotels.create(
      name: Faker::Witcher.monster,
      start_time: Trip.first.start_date,
      end_time: Trip.first.end_date
    )
    place.attractions.create(
      name: Faker::Restaurant.name,
      start_date: Trip.first.start_date,
      end_date: Trip.first.end_date
    )
    place.transports.create(
      type_of_transport: 'train',
      start_time: Trip.first.start_date,
      end_time: Trip.first.end_date
    )
  end
end
