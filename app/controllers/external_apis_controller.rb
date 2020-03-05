class ExternalApisController < ActionController::API

    def show
        external_api = ExternalApi.find(params[:id])

        render json: external_api
    end

    def update
        external_api = ExternalApi.find(params[:id])

        external_api.update(weather: params[:external_api][:weather])
        
        render json: external_api
    end 



    def notes_params
        params.require(:external_api).permit(:pollen, :weather, :air_quality, :pollutants)
    end 
end 