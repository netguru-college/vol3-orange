FactoryBot.define do
  factory :place do
    name 'Tokio'
    start_date Time.zone.today
    end_date Time.zone.tomorrow
  end
end
