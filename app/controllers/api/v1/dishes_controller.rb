class Api::V1::DishesController < ApplicationController
    before_action :set_dish, only: %i[show update destroy]
    
    def index
        @dishes = Dish.all
        render json: @dishes
    end
    
    def show
        render json: @dish
    end
    
    def create
        @dish = Dish.new(dish_params)
        
        if @dish.save
            render json: @dish, status: :created, location: @dish
        else
            render json: @dish.errors, status: :unprocessable_entity
        end
    end
    
    def update
        if @dish.update(dish_params)
            render json: @dish
        else
            render json: @dish.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        @dish.destroy
    end
    
    private
    
    def set_dish
        @dish = Dish.find(params[:id])
    end
    
    def dish_params
        params.require(:dish).permit(:name, :tagline, :description, :category, :price)
    end
end
