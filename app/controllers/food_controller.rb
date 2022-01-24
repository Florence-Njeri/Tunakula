class FoodController < ApplicationController
    def index
        # Fetch all the food items from the db
        @foodItems = FoodItem.all
    end
    def show
        @foodItem = FoodItem.find(params[:id])
    end
end
