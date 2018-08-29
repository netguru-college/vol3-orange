class Attraction < ApplicationRecord
  belongs_to :place
  validates :name, :end_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date }
  validate :start_date_within_place_dates, :end_date_within_place_dates

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
end
