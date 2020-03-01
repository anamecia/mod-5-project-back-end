class AsthmaControlTestsController < ApplicationController

    def create 
        user = get_current_user
    
        atc = AsthmaControlTest.create(user_id: user.id, score: params[:asthma_control_test][:score])

        if atc 
            render json: atc
        else 
            render json: { error: 'You are not authorized.' }, status: 401
        end 
    end 

    def last_atc_score
        user = get_current_user

        atcs = user.asthma_control_tests
        
        if atcs.length > 0
            atc = atcs.last
        else 
            atc = {created_at: Time.new(2018, 1, 1)}
        end
                
        if atc 
            render json: atc
        else 
            render json: {error: 'You are not authorized.' }, status: 401
        end
    end 

    private 

    def asthma_control_test_params 
        params.require(:asthma_control_test).permit(:user_id,:score)
    end 

end 