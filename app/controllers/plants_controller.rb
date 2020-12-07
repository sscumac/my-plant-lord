class PlantsController < ApplicationController
  def index
    query_result

    @current_user = user_1

    @markers = @plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude,
        image_url: helpers.asset_url('plant.png'),
        infoWindow: render_to_string(partial: "info_window", locals: { plant: plant })
      }
    end
  end

  def new
    @plant = Plant.new
  end

  def show
    @plant = Plant.find(params[:id])
    @review = Review.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new # jumps to view "new"
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:description, :name, :price, :address, :photo)
  end

  def query_result
    if params[:query].present?
      @plants = Plant.search_by_name(params[:query])
    else
      @plants = Plant.all
    end
  end
end
