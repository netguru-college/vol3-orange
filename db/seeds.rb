require 'faker'
require 'as-duration'

Rails.logger = Logger.new(STDOUT)

Rails.logger.info "Creating users..."

User.create(
  email: 'user@user.com',
  password: 'Orange2018'
)

5.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: 'Orange2018'
  )
  print "."
end

User.all.each do |user|
  5.times do
    start_date = Faker::Time.between(1.year.ago, 1.year.from_now, :all)
    user.trips.create(
      name: Faker::FunnyName.name,
      start_date: start_date,
      end_date: start_date + 2.weeks
    )
    print "."
  end
end

puts ""

Rails.logger.info "Creating trips..."

Trip.all.each do |trip|
  5.times do |i|
    trip.places.create(
      name: Faker::WorldCup.city,
      country: Faker::Address.country,
      start_date: trip.start_date + i.days,
      end_date: trip.end_date + i.days + 1.day
    )
    print '.'
  end
end

puts ""

Rails.logger.info "Creating places..."

Place.all.each do |place|
  2.times do
    place.hotels.create(
      name: Faker::Witcher.monster
    )
    place.attractions.create(
      name: Faker::Restaurant.name,
      start_date: place.start_date,
      end_date: place.end_date
    )
    place.transports.create(
      type_of_transport: Faker::Dessert.variety,
      start_time: place.start_date,
      end_time: place.end_date
    )
    print "."
  end
end

puts ""
