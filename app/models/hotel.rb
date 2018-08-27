class Hotel < ApplicationRecord
  belongs_to :place

  validates :name, :start_time, :end_time, presence: true
end
