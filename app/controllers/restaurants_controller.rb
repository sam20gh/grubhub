class RestaurantsController < ApplicationController
    

    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end
    def show
        @restaurant = Restaurant.find(params[:id])
        @restaurants = Restaurant.where(style: @restaurant.style)
    end

    def create
        @restaurant = Restaurant.create(restaurant_params)
        redirect_to @restaurant
    end
    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :style)
    end
end
