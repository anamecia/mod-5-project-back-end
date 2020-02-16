class UsersController < ApplicationController

    def signin
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # render json: user, only: [:username, :date_of_birth]
            render json: {user:user, token: issue_token({ id: user.id })}
        else
            render json: {error: 'Invalid Username or Password. Plaese try again!'}, status:401
        end 
    end 

    def validate
        user = get_current_user
        if user
            render json: user #render something for that user
        else
          render json: { error: 'You are not authorized.' }, status: 401
        end
    end 
end 