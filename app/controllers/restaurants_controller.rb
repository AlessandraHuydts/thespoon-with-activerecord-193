class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :delete]

  # REST Architectuere

  def index
    # get 'restaurants'
    @restaurants = Restaurant.all
  end

  def show
    # get 'restaurants/:id'
  end

  def new
    # get 'restaurants/new'
    @restaurant = Restaurant.new
  end

  def create
    # post 'restaurants'
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    # redirect to the index
    redirect_to restaurants_path
  end

  def edit
    # get 'restaurants/:id'
  end

  def update
    # patch/put 'restaurants/:id'
    @restaurant.update(restaurant_params)

    # redirect to the restaurant show page
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # delete 'restaurants/:id'
    @restaurant.destroy

    # redirect to the index
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end



