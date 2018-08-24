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

5.times do
  start_time = Faker::Time.forward(23, :morning)

  Transport.create(
    type_of_transport: Faker::Word,
    start_location: Faker::Address.city,
    end_location: Faker::Address.city,
    cost: Faker::Number.positive,
    start_time: start_time,
    end_time: start_time + 3.hours
  )
  printf('.')
end
