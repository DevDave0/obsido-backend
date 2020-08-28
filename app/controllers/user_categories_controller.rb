class UserCategoriesController < ApplicationController

    def index 
        @user_categories = UserCategory.all 
        render json: @user_categories
    end 

end
