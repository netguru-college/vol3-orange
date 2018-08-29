class Transport < ApplicationRecord
  belongs_to :place
  validates :type_of_transport, :start_time, :end_time, :start_location, presence: true
end
