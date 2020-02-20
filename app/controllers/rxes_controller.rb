class RxesController < ApplicationController

    def create 
        user = get_current_user
    
        rx = Rx.create(
            user_id: user.id, 
            medicine_id: params[:rx][:medicine_id],
            remaining_doses: params[:rx][:remaining_doses],
            rescue: params[:rx][:rescue])

        if rx 
            render json: rx 
        else 
            render json: { error: 'You are not authorized.' }, status: 401
        end 
    end 


    private 

    def rx_params
        params.require(:rx).permit(:user_id, :medicine_id, :rescue, :remaining_doses)
    end 

end 