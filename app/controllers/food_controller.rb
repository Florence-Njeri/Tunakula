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

        if @foodItem.save
            redirect_to @foodItem
        else
            render :new, status: :unprocessable_entity
        end
    end 

    def edit 
        @foodItem = FoodItem.find(params[:id])
    end
    def update 
        @foodItem = FoodItem.find(params[:id])
        if @foodItem.update(food_item_params)
            redirect_to @foodItem
        else
            render :edit, status: :unprocessable_entity
          end
    end
    def destroy
        @foodItem = FoodItem.find(params[:id])
        @foodItem.destroy
    
        redirect_to root_path, status: :see_other
      end
    private 
    def food_item_params
        params.require(:foodItem).permit(:title, :price)
    end
end
