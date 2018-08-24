# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'as-duration'

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
