class Place < ApplicationRecord
  has_many :hotels, dependent: :destroy
  has_many :attractions, dependent: :destroy
  has_many :transports, dependent: :destroy
  has_many :hotels, dependent: :destroy
  belongs_to :trip
  validates :name, :start_date, :end_date, presence: true
end
