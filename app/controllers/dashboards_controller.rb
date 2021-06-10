class DashboardsController < ApplicationController
  def account
    @my_bookings = Booking.where(user: current_user)
    # @my_cars_bookings = User.id.where(current_user.cars.bookings)
    @all_bookings = Booking.all
  end
end
