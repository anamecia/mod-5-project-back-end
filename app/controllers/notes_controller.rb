class NotesController < ApplicationController

    def create
        user = get_current_user
    
        note = Note.create(user_id: user.id, title: params[:note][:title], content: params[:note][:content])

        if note 
            render json: note
        else 
            render json: { error: 'You are not authorized.' }, status: 401
        end 
    end 

    private 

    def notes_params
        params.require(:note).permit(:user_id, :title, :content)
    end 

end 