FactoryBot.define do
  factory :attraction do
    name { 'Tokio Odaiba' }
    start_date { Time.now }
    end_date { Time.now + 1.day }
    place
  end
end
