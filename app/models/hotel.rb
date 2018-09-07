class Hotel < ApplicationRecord
  belongs_to :place

  validates :name, :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date }
  validate :start_date_within_place_dates, :end_date_within_place_dates

  before_save :set_date_to_midnight

  def start_date_within_place_dates
    if place.start_date > start_date
      errors.add(:start_date, "can't be earlier than #{place.start_date}")
    end
  end

  def end_date_within_place_dates
    if place.end_date < end_date
      errors.add(:end_date, "can't be later than #{place.end_date}")
    end
  end

  private

  def set_date_to_midnight
    self.start_date = self.start_date.midnight
    self.end_date = self.end_date.midnight
  end
end
