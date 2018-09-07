FactoryBot.define do
  factory :attraction do
    name { 'Tokio Odaiba' }
    start_date { Time.now.midnight }
    end_date { Time.now.midnight + 1.day }
    place
  end
end
