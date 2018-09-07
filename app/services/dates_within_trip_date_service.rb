class DatesWithinTripDateService
  def initialize(place)
    @place = place
  end

  def call
    if @place.trip.start_date > @place.start_date
      @place.errors.add(:start_date, "can't be earlier than #{@place.trip.start_date}")
    end
    if @place.trip.end_date < @place.end_date
      @place.errors.add(:end_date, "can't be later than #{@place.trip.end_date}")
    end
  end
end
