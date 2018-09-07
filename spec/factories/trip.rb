FactoryBot.define do
  factory :trip do
    name { 'Nice trip' }
    start_date { Time.now.midnight }
    end_date { Time.now.midnight + 10.days }
  end
end
