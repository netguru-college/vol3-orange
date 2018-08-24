class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
    @past_trips = @trips.where(
      created_at: Date.today..(Date.today + 10.years)
    )
    @upcoming_trips = @trips.where(
      created_at: (Date.today - 5.years)..Date.today
    )
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trip.build(trip_params)
    if @trip.save
      redirect_to @trip
    else
      render :new
    end
  end

  def edit ; end

  def update
    if @trip.update(trip_params)
      redirect_to @trip
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
