class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: ["show", "edit", "update", "destroy"]
  
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params 
    params.require(:restaurant).permit(:name, :address, :city, :photo)
  end
end
