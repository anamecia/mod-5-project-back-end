class NotesController < ApplicationController

    def create
        user = get_current_user
        
        note = Note.create(user_id: user.id, title: params[:note][:title], content: params[:note][:content])
        if note
            render json: note
        else 
            render json: { error: note.errors.full_messages }
        end 
    end 

    def update
        note = Note.find(params[:id])

        note.update(title: params[:note][:title], content: params[:note][:content])
        
        render json: note
    end


    def destroy 
        
        note = Note.find(params[:id])
        note.destroy
    end 

    private 

    def notes_params
        params.require(:note).permit(:user_id, :title, :content)
    end 

end 