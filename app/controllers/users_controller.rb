class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index]

    def create 
        user = User.new(user_params)
        options = {
            include: [:category, :message_board]
        }

        if user.valid?
            user.save 
            render json: {user: UserSerializer.new(user, options), token: encode_token({user_id: user.id})}
        else 
            render json: {error: "Failed to create a user"}
        end 

    end 

    def index 
        @users = User.all 
        render json: @users
    end 

    private 

    def user_params 
        params.permit(:name, :password)
    end 

end
