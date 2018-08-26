require 'rails_helper'

RSpec.describe Trip, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:end_date) }
  it do
    should validate_length_of(:name).is_at_least(2)
      .is_at_most(30)
  end
end
