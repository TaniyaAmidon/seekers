class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(params[:id])
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @trip.update(trip_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    @trip.destroy
    redirect_to trips_path(@trip)
  end

  private

  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:description, :destination, :price, :group_id)
  end
end
