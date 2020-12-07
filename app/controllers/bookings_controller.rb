class BookingsController < ApplicationController

  def index
    @my_bookings = Booking.where(user: current_user)
    @requested_bookings = Booking.select{|booking| booking.plant.user == current_user}

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @plant = Plant.find(params[:plant_id])
    @booking.plant = @plant
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
      @booking = Booking.find(params[:id])
      @booking.update(booking_params)
      redirect_to bookings_path
  end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
