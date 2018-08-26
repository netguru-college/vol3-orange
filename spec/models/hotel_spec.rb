require 'rails_helper'

RSpec.describe Hotel, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:end_time) }

end
