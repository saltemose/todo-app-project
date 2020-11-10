class EditsController < ApplicationController

    def create 
        @edit = Edit.new(edit_params)
    end


    private

    def edit_params
        params.require(:edit).permit(:task_id, :name, :completed).with_defaults(completed: false)
    end 

end