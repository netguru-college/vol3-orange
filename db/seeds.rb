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
