class Place < ApplicationRecord
  has_many :hotels, dependent: :destroy
  has_many :attractions, dependent: :destroy
  has_many :transports, dependent: :destroy
  belongs_to :trip
  validates :name, :start_date, :end_date, presence: true
  accepts_nested_attributes_for :hotels
  accepts_nested_attributes_for :transports
  accepts_nested_attributes_for :attractions

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [name, country].compact.join(',')
  end
end
