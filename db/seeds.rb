5.times do
  User.create(
    email: Faker::Internet.email,
    password: 'Orange2018vol-3'
  )
end

5.times do
  Trip.create(
    name: Faker::Name
  )
end
