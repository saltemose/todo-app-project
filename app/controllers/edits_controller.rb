class EditsController < ApplicationController

    def create 
        @edit = Edit.new(edit_params)
        if @edit.save!
            render json: ['Success'], status: 200
        else 
            render json: @transaction.errors.full_messages, status: 422
        end
    end


    private

    def edit_params
        params.require(:edit).permit(:task_id, :name, :completed).with_defaults(completed: false)
    end 

end