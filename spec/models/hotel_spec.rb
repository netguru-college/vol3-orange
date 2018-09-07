require 'rails_helper'

RSpec.describe Hotel, type: :model do
  let(:hotel) { build(:hotel) }

  it 'checks for presence of name' do
    hotel.name = nil
    expect(hotel).not_to be_valid
    expect(hotel.errors[:name][0]).
      to include("can't be blank")
  end

  it 'checks for start date after end date' do
    hotel.end_date = hotel.start_date - 1
    expect(hotel).not_to be_valid
    expect(hotel.errors[:end_date][0]).
      to include("must be after or equal to")
  end

  it 'checks for hotel start date after places' do
    hotel.place.start_date = Time.now
    hotel.start_date = Time.zone.yesterday
    expect(hotel).not_to be_valid
    expect(hotel.errors[:start_date][0]).
      to include("can't be earlier than")
    hotel.start_date = Time.zone.tomorrow
    expect(hotel).to be_valid
  end

  it 'checks for hotel end date before than places' do
    hotel.place.end_date = Time.zone.tomorrow
    hotel.end_date = Time.zone.tomorrow + 1
    expect(hotel).not_to be_valid
    expect(hotel.errors[:end_date][0]).
      to include("can't be later than")
    hotel.end_date = Time.now
    expect(hotel).to be_valid
  end
end
