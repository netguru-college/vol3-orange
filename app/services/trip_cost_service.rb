class TripCostService
  def initialize(trip)
    @trip = trip
  end

  def call
    cost = 0
    @trip.places.each do |place|
      cost += place.cost
    end
    cost
  end
end
