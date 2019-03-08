class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
    @trip = Trip.new(trip_params)
    @trip.group = Group.new
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

  def pending_index
    @trip = Trip.find(params[:id])
    @pending_members = GroupMember.where(status: "pending", group: @trip.group)
  end
  helper_method :pending_index

  def accepted_index
    @trip = Trip.find(params[:id])
    @accepted_members = GroupMember.where(status: "accepted", group: @trip.group)
  end
  helper_method :accepted_index

  def rejected_index
    @trip = Trip.find(params[:id])
    @rejected_members = GroupMember.where(status: "rejected", group: @trip.group)
  end
  helper_method :rejected_index

  private

  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(
      :description,
      :group_id,
      :destination,
      :user_id,
      :price,
      :activity_id,
      :title,
      :start_date,
      :end_date,
      :organiser_exp,
      :visited_before,
      :crew_exp,
      :crew_exp_required,
      :max_crew_size,
      :photo)
  end
end
