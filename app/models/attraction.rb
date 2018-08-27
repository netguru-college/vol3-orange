class Attraction < ApplicationRecord
  belongs_to :place
  validates :name, :start_date, :end_date, presence: true
end
