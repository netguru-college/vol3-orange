FactoryBot.define do
  factory :hotel do
    name { 'Tokio' }
    start_date { Time.zone.today }
    end_date { Time.zone.tomorrow }
    place
  end
end
