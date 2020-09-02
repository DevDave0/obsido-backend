class CategoriesController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index]

    def index 
        @categories = Category.all 
        render json: @categories
    end 

    def create 
        category = Category.create(
            name: params[:name],
            description: params[:description],
            amount: params[:amount],
            user_id: decode_token(params[:user_id])[0]['user_id']
            
        )

        if category.valid?
            category.save 
            render json: {category: CategorySerializer.new(category)}
        else 
            render json: {'error': 'There was an error. Please try again'}
        end 

    end 

    private 

    def category_params 
        params.require(:category).permit(:name, :description, :amount)
    end 

end
