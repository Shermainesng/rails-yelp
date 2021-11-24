class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @new_restaurant = Restaurant.new
  end

  def create
    new_restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(new_restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
