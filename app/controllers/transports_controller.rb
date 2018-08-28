class TransportsController < ApplicationController
  before_action :set_trip, :set_place
  before_action :set_transport, only: [:show, :edit, :update, :destroy]

  def index
    @transports = @place.transports
  end

  def new
    @transport = @place.transports.build
  end

  def create
    @transport = @place.transports.build(transport_params)
    if @transport.save
      redirect_to trip_place_path(@place)
    else
      render :new
    end
  end

  def edit ; end

  def update
    if @transport.update(transport_params)
      redirect_to @place
    else
      render :edit
    end
  end

  def destroy
    @transport.destroy
    redirect_to trip_place_path(@place)
  end

  private

  def transport_params
    params.require(:transport).permit(
      :type_of_transport,
      :start_location,
      :cost,
      :start_time,
      :end_time
    )
  end

  def set_trip
    @trip = current_user.trips.find(params[:trip_id])
  end

  def set_place
    @place = @trip.places.find(params[:place_id])
  end

  def set_transport
    @transport = @place.transports.find(params[:id])
  end

end
