FactoryBot.define do
  factory :trip do
    name { 'Nice trip' }
    start_date { Time.zone.today }
    end_date { Time.zone.tomorrow }
    after :create do |trip|
      create_list :place, 3, trip: trip
    end
  end
end
