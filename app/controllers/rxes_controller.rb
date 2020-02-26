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

    def update
        rx = Rx.find(params[:id])
        rx.update(remaining_doses: params[:rx][:remaining_doses])

        taken_dose = rx.taken_doses.find_by(date: params[:date])
        if taken_dose
            count = taken_dose.count + 1
            taken_dose.update(count: count)
        else
            TakenDose.create(rx_id: rx.id, date: params[:date], count: 1)
        end 
        
        render json: rx, include: [:medicine]
    end 

    def destroy 
        rx = Rx.find(params[:id])
        rx.taken_doses.each{|taken_dose| taken_dose.destroy} 
        rx.destroy
    end 


    private 

    def rx_params
        params.require(:rx).permit(:user_id, :medicine_id, :rescue, :remaining_doses, :taken_doses)
    end 

end 