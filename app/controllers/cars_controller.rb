class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save!
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show
    @car = Car.find(params[:id])
    @cars = Car.all
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year, :price_day, :description, :category, :photo)
  end
end
