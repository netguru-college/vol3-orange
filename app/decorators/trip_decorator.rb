class TripDecorator < Draper::Decorator
  delegate_all

  def trip_status(val)
    "#{val.capitalize} Trips"
  end

end
