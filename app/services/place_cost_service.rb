class PlaceCostService
  def initialize(place)
    @place = place
  end

  def call
    cost = 0
    @place.hotels.each do |atr|
      cost += atr.cost
    end
    @place.attractions.each do |atr|
      cost += atr.cost
    end
    @place.transports.each do |atr|
      cost += atr.cost
    end
    cost
  end
end
