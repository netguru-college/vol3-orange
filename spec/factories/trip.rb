FactoryBot.define do
  factory :trip do
    name { 'Nice trip' }
    start_date { Time.now }
    end_date { Time.now + 10.days }
  end
end
