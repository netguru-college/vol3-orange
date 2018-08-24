class Place < ApplicationRecord
  has_many :transports
  has_many :attractions
  has_many :hotels
  belongs_to :trip
end
