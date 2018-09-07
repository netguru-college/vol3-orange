FactoryBot.define do
  factory :place do
    name { 'Tokio' }
    start_date { Time.now.midnight }
    end_date { Time.now.midnight + 7.days }
    trip
  end
end
