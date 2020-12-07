class ReviewsController < ApplicationController
    
    def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    end
    
    def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to plant_path(@booking.plant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
