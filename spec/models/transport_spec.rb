require 'rails_helper'

RSpec.describe Transport, type: :model do
  it { should validate_presence_of(:type_of_transport) }
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:end_time) }
end
