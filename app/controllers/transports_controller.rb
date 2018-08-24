class TransportsController < ApplicationController
  before_action :set_transport, only: [:show, :edit, :update, :destroy]

  def index
    @transports = Transport.all
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(transport_params)
  end

  def show; end

  def edit; end

  def update
    if @transport.update(transport_params)
      redirect_to @place
    else
      render :edit
    end
  end

  def destroy
    @transport.destroy
    redirect_to trips_path
  end

  private

  def transport_params
    params.require(:transport).permit(
      :type_of_transport,
      :start_location,
      :end_location,
      :cost,
      :start_time,
      :end_time
    )
  end

  def set_transport
    @transport = Transport.find(params[:id])
  end
end
