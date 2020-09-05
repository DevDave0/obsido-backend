class SubCategoriesController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index]

    def index 
        @sub_categories = SubCategory.all 
        render json: @sub_categories
    end 

    def create 
        sub_category = SubCategory.create(
            name: params[:name],
            description: params[:description],
            amount: params[:amount],
            category_id: params[:category_id]
            
        )

        if sub_category.valid?
            sub_category.save 
            render json: {category: SubCategorySerializer.new(sub_category)}
        else 
            render json: {'error': 'There was an error. Please try again'}
        end 

    end 

    private 

    def sub_category_params 
        params.require(:sub_category).permit(:name, :description, :amount, :category_id)
    end 
end
