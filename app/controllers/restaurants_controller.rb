class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurants = Restaurant.new(restaurant_params)
    @restaurants.save
    redirect_to restaurant_path(@restaurant)
  end
  
  private
  
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  end

  def new
    @restaurants = Restaurants.new
  end

