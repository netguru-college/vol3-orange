FactoryBot.define do
  factory :trip do
    name 'Nice trip'
    start_date Time.zone.today
    end_date Time.zone.tomorrow
  end
end
