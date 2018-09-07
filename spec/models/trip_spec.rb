require 'rails_helper'

RSpec.describe Trip, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:end_date) }
  it do
    should validate_length_of(:name).is_at_least(2)
      .is_at_most(30)
  end

  let (:trip) { build(:trip) }

  it 'checks for start date after end date' do
    trip.end_date = trip.start_date - 1
    expect(trip).not_to be_valid
    expect(trip.errors[:end_date][0]).
      to include("must be after or equal to")
  end
end
