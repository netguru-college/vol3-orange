class EndDateWithinPlaceDateService
  def initialize(object)
    @object = object
  end

  def call
    if @object.place.end_date < @object.end_date
      @object.errors.add(:end_date, "can't be later than #{@object.place.end_date}")
    end
  end
end
