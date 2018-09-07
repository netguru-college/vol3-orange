require 'rails_helper'

RSpec.describe Attraction, type: :model do
  let(:attraction) { build(:attraction) }

  it 'checks for presence of name' do
    attraction.name = nil
    expect(attraction).not_to be_valid
    expect(attraction.errors[:name][0])
      .to include("can't be blank")
  end

  it 'checks for start date after end date' do
    attraction.end_date = attraction.start_date - 1
    expect(attraction).not_to be_valid
    expect(attraction.errors[:end_date][0])
      .to include("must be after or equal to")
  end

  it 'checks for attraction start date after places' do
    attraction.start_date = attraction.place
      .start_date - 1.day
    expect(attraction).not_to be_valid
    expect(attraction.errors[:start_date][0])
      .to include("can't be earlier than")
    attraction.start_date = attraction.place.start_date
    expect(attraction).to be_valid
  end

  it 'checks for attraction end date before places' do
    attraction.end_date = attraction.place
      .end_date + 1.day
    expect(attraction).not_to be_valid
    expect(attraction.errors[:end_date][0])
      .to include("can't be later than")
    attraction.end_date = attraction.place
      .end_date
    expect(attraction).to be_valid
  end
end
