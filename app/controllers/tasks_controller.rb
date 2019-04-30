# class TasksController < ApplicationController
class TasksController < ProtectedController
# class TasksController < OpenReadController

  before_action :set_task, only: [:update, :destroy]
                              # step 5 remove show
  # GET /tasks
  def index
    # @tasks = Task.all
    @tasks = current_user.tasks.all
    render json: @tasks
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
        # ^^ step 6, step7 in serializer
    render json: @task
  end

  # POST /tasks
  def create
    # @task = Task.new(task_params)
      @task = current_user.tasks.build(task_params)
      #               Step 3

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    # @task = current_user.tasks.find(params[:id])
    @task.destroy
  end

  # private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      # @task = Task.find(params[:id])
      @task = current_user.tasks.find(params[:id])
      #  step 4
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :description, :due_date, :step_id)
    end
    private :set_task, :task_params
end
