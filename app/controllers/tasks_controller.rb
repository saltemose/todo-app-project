# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :require_current_user!, except: [:create, :new]
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    if params[:completed]
      @tasks = current_user.tasks.where(:completed => params[:completed])
    else 
      @tasks = current_user.tasks.where(:completed => false)
    end 
      @allTasks = current_user.tasks.count()
      @completedTasks = current_user.tasks.where(:completed => true).count()
      @incompleteTasks = current_user.tasks.where(:completed => false).count()
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @edits = Edit.where(:task_id => params[:id]).sort_by { |item| -item.id }
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit; end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = current_user.tasks.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_path, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }

      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
          edit_params = {
            task_id: @task.id,
            name: task_params[:name],
            completed: task_params[:completed]
            }
        @edit = Edit.create(edit_params)
        format.html { redirect_to tasks_path, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:name, :completed).with_defaults(:completed => false)
  end
end
