FactoryBot.define do
  factory :transport do
    type_of_transport { 'train' }
    start_location { 'Honsiu' }
    start_date { Time.zone.today }
    end_date { Time.zone.tomorrow }
    place
  end
end
