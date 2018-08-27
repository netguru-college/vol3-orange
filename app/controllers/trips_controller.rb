class TripsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = current_user.trips
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.build(trip_params)
    @trip.user_trips.new(user: current_user, role: "owner")
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
    @trip = current_user.trips.find(params[:id])
  end

end
