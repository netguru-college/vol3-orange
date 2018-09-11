FactoryBot.define do
  factory :trip do
    name { 'Nice trip' }
    start_date { Time.now.midnight }
    end_date { Time.now.midnight + 10.days }
    after :create do |trip|
      create_list :place, 3, trip: trip
    end
  end
end
