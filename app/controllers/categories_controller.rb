class CategoriesController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index, :destroy]

    def index 
        categories = Category.all 
        options = {
            include: [:sub_categories, :'sub_categories.name']
            }
        render json: CategorySerializer.new(categories, options)
    end 

    def create 
        category = Category.create(
            name: params[:name],
            description: params[:description],
            amount: params[:amount],
            user_id: decode_token(params[:user_id])[0]['user_id']
            
        )
        options = {include: [:user]}

        if category.valid?
            category.save 
            render json: {category: CategorySerializer.new(category, options)}
        else 
            render json: {'error': 'There was an error. Please try again'}
        end 

    end 

    def destroy 
        @category = Category.find(params[:id])
        @category.destroy 
        render json: @category
    end 

    private 

    def category_params 
        params.require(:category).permit(:name, :description, :amount)
    end 

end
