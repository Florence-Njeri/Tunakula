class FoodController < ApplicationController
    def index
        # Fetch all the food items from the db
        @foodItems = FoodItem.all
    end
    def show
        @foodItem = FoodItem.find(params[:id])
    end
    def new 
        @foodItem = FoodItem.new
    end
    def create 
        @foodItem = FoodItem.new(food_item_params)

        if @article.save
            redirect_to @article
        else
            render :new, status: :unprocessable_entity
        end
    end 
    private 
    def food_item_params
        params.require(:foodItem).permit(:title, :price)
    end
end
