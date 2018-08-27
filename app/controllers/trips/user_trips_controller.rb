class Trips::UserTripsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_trip

  def create
    trip_user = @trip.user_trips.new(trip_user_params)
    trip_user.trip = @trip

    if trip_user.save
        redirect_to @trip, notice: 'Saved!'
    else
        redirect_to @trip, notice: 'Failed saving!'
    end
  end

  private

    def set_trip
        @trip = current_user.trips.find(params[:trip_id])
    end

    def trip_user_params
        params.require(:user_trip).permit(:email)
    end
end