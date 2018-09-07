class StartDateWithinPlaceDateService
  def initialize(object)
    @object = object
  end

  def call
    if @object.place.start_date > @object.start_date
      @object.errors.add(:start_date, "can't be earlier than #{@object.place.start_date}")
    end
  end
end
