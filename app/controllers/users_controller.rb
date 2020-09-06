class UsersController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index]

    def create 
        user = User.new(user_params)
        # options = {include: [:category]}

        if user.valid?
            user.save 
            options = {
                include: [:categories]
              }
            render json: {user: UserSerializer.new(user, options), token: encode_token({user_id: user.id})}
        else 
            render json: {error: "Failed to create a user"}
        end 

    end 

    def index 
        users = User.all 
        options = {
            include: [:categories]
          }
        render json: UserSerializer.new(users, options)
    end 

    private 

    def user_params 
        params.permit(:name, :password)
    end 

end
