class EditsController < ApplicationController

    def create 
        @edit = Edit.new(edit_params)
    end


    private

    def edit_params
        params.require(:edit).permit(:user_id, :name, :completed)
    end 

end