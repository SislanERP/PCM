class TasksController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @master_maintenance_plan = MasterMaintenancePlan.find(params[:master_maintenance_plan_id])
    @task_types = TaskType.all
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
    @task_types = TaskType.all
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @master_maintenance_plan = MasterMaintenancePlan.find(params[:master_maintenance_plan_id])
    @task.master_maintenance_plan = @master_maintenance_plan

    respond_to do |format|
      if @task.save
        @tasks = @master_maintenance_plan.tasks_include_task_type

        format.json { render :show, status: :created, location: @task }
        format.js
      else

        format.json { render json: @task.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        @tasks = @master_maintenance_plan.tasks_include_task_type
        format.js
      else
        format.js
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    respond_to do |format|
      if @task.destroy
        @tasks = @master_maintenance_plan.tasks_include_task_type
        format.js
      else
        format.js
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
      @master_maintenance_plan = MasterMaintenancePlan.find(params[:master_maintenance_plan_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(
      :sequence,
      :description,
      :task_type_id
      )
    end
end
