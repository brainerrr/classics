class BookingsController < ApplicationController

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(bookings_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save!
      redirect_to car_path(@car)
      @booking.status = "Pending"
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def bookings_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end

end
