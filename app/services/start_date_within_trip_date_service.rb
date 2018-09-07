class StartDateWithinTripDateService
  def initialize(place)
    @place = place
  end

  def call
    if @place.trip.start_date > @place.start_date
      @place.errors.add(:start_date, "can't be earlier than #{@place.trip.start_date}")
    end
  end
end
