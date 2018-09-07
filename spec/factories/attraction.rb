FactoryBot.define do
  factory :attraction do
    name { 'Tokio Odaiba' }
    start_date { Time.zone.today }
    end_date { Time.zone.tomorrow }
    place
  end
end
