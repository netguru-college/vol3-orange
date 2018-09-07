FactoryBot.define do
  factory :hotel do
    name { 'Tokio Hostel' }
    start_date { Time.now.midnight }
    end_date { Time.now.midnight + 1.day }
    place
  end
end
