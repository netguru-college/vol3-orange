class Place < ApplicationRecord
  has_many :hotels
  has_many :transports
  has_many :attractions
  belongs_to :trip
  validates :name, :start_date, :end_date, presence: true
  accepts_nested_attributes_for :hotels
  accepts_nested_attributes_for :transports
  accepts_nested_attributes_for :attractions
end
