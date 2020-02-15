class UsersController < ApplicationController

    def signin
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user, only: [:username, :date_of_birth]
        else
            render json: {error: 'Invalid Username or Password. Plaese try again!'}, status:401
        end 
    end 
end 