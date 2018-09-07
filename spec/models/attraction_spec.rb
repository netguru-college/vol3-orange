require 'rails_helper'

RSpec.describe Attraction, type: :model do
  let(:attraction) { build(:attraction) }

  it 'checks for presence of name' do
    attraction.name = nil
    expect(attraction).not_to be_valid
    expect(attraction.errors[:name][0]).
      to include("can't be blank")
  end

  it 'checks for start date after end date' do
    attraction.end_date = attraction.start_date - 1
    expect(attraction).not_to be_valid
    expect(attraction.errors[:end_date][0]).
      to include("must be after or equal to")
  end

  it 'checks for attraction start date after places' do
    attraction.place.start_date = Time.now
    attraction.start_date = Time.zone.yesterday
    expect(attraction).not_to be_valid
    expect(attraction.errors[:start_date][0]).
      to include("can't be earlier than")
    attraction.start_date = Time.zone.tomorrow
    expect(attraction).to be_valid
  end

  it 'checks for attraction end date before than places' do
    attraction.place.end_date = Time.zone.tomorrow
    attraction.end_date = Time.zone.tomorrow + 1
    expect(attraction).not_to be_valid
    expect(attraction.errors[:end_date][0]).
      to include("can't be later than")
    attraction.end_date = Time.now
    expect(attraction).to be_valid
  end
end
