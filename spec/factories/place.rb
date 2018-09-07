FactoryBot.define do
  factory :place do
    name { 'Tokio' }
    start_date { Time.now }
    end_date { Time.now + 7.days }
    trip
  end
end
