class Place < ApplicationRecord
  has_many :hotels, dependent: :destroy
  has_many :attractions, dependent: :destroy
  has_many :transports, dependent: :destroy
  belongs_to :trip

  validates :name, :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date }
  validate :start_date_within_place_dates, :end_date_within_place_dates

  geocoded_by :full_address
  after_validation :geocode if :full_address_changed?

  before_save :set_date_to_midnight

  def full_address
    [name, country].compact.join(',')
  end

  def start_date_within_place_dates
    if trip.start_date > start_date
      errors.add(:start_date, "can't be earlier than #{trip.start_date}")
    end
  end

  def end_date_within_place_dates
    if trip.end_date < end_date
      errors.add(:end_date, "can't be later than #{trip.end_date}")
    end
  end

  private

  def set_date_to_midnight
    self.start_date = self.start_date.midnight
    self.end_date = self.end_date.midnight
  end
end
