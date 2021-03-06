class UsersController < ApplicationController

    def signin
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # render json: user, only: [:username, :date_of_birth]
            render json: { user:  user, token: issue_token({ id: user.id }) }
        else
            render json: {error: 'Invalid Username or Password. Please try again!'}, status:401
        end 
    end 

    def signup
        user = User.create(user_params)
        if user.valid?
            render json: {user: user, token: issue_token({ id: user.id })}
        else 
            render json: {error: user.errors.full_messages}
        end
    end 

    def validate
        user = get_current_user
        if user
            render json: { user:  user, token: issue_token({ id: user.id }) }
        else
          render json: { error: 'You are not authorized.' }, status: 401
        end
    end 

    def medicines
        user = get_current_user
        medicines = user.rxes

        if user
            render json: medicines, include: [:medicine]
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end 

    def notes 
        user = get_current_user
        notes = user.notes

        if notes 
            render json: notes

        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end  

    def atcs
        user = get_current_user
        atcs = user.asthma_control_tests

        if atcs 
            render json: atcs
        else
            render json: { error: 'You are not authorized.' }, status: 401
        end
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :date_of_birth, :password, :password_confirmation)
    end
end 
