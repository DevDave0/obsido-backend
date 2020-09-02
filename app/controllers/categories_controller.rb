class CategoriesController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index]

    def index 
        @categories = Category.all 
        render json: @categories
    end 

    def create 
        category = Category.create(category_params)

        render json: {category: CategorySerializer.new(category)}
    end 

    private 

    def category_params 
        params.require(:category).permit(:name, :description, :amount, :user_id)
    end 

end
