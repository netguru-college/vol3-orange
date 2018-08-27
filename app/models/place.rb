class Place < ApplicationRecord
  has_many :hotels
  has_many :attractions
  has_many :transports
  has_many :attractions
  has_many :hotels
  belongs_to :trip
  validates :name, :start_date, :end_date, presence: true
end
