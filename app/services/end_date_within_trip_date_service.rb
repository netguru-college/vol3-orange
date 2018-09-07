class EndDateWithinTripDateService
  def initialize(place)
    @place = place
  end

  def call
    if @place.trip.end_date < @place.end_date
      @place.errors.add(:end_date, "can't be later than #{@place.trip.end_date}")
    end
  end
end
