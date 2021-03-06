class OrdersController < ApplicationController
  def create
    trip = Trip.find(params[:trip_id])
    order = Order.create!(trip: trip, amount: (trip.price/10), state: 'pending', user: current_user)

    redirect_to trip_path(trip)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

end
