class Hotel < ApplicationRecord
  belongs_to :place

  validates :name, :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date }
  validate :dates_within_place_dates

  before_save :set_date_to_midnight

  private

  def dates_within_place_dates
    DatesWithinPlaceDateService.new(self).call
  end

  def set_date_to_midnight
    SetDateService.new(self).call
  end
end
