class MasterMaintenancePlansController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!
  before_action :set_master_maintenance_plan, only: [:show, :edit, :update, :destroy]

  # GET /master_maintenance_plans
  # GET /master_maintenance_plans.json
  def index
    @master_maintenance_plans = MasterMaintenancePlan.all
  end

  # GET /master_maintenance_plans/1
  # GET /master_maintenance_plans/1.json
  def show
    @master_maintenance_plan = MasterMaintenancePlan.find(params[:id])
    @tasks = @master_maintenance_plan.tasks.includes(:task_type)
  end

  # GET /master_maintenance_plans/new
  def new
    @master_maintenance_plan = MasterMaintenancePlan.new
  end

  # GET /master_maintenance_plans/1/edit
  def edit
  end

  # POST /master_maintenance_plans
  # POST /master_maintenance_plans.json
  def create
    @master_maintenance_plan = MasterMaintenancePlan.new(master_maintenance_plan_params)

    respond_to do |format|
      if @master_maintenance_plan.save
        format.html { redirect_to @master_maintenance_plan, notice: 'Master maintenance plan was successfully created.' }
        format.json { render :show, status: :created, location: @master_maintenance_plan }
      else
        format.html { render :new }
        format.json { render json: @master_maintenance_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_maintenance_plans/1
  # PATCH/PUT /master_maintenance_plans/1.json
  def update
    respond_to do |format|
      if @master_maintenance_plan.update(master_maintenance_plan_params)
        format.html { redirect_to @master_maintenance_plan, notice: 'Master maintenance plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_maintenance_plan }
      else
        format.html { render :edit }
        format.json { render json: @master_maintenance_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_maintenance_plans/1
  # DELETE /master_maintenance_plans/1.json
  def destroy
    @master_maintenance_plan.destroy
    respond_to do |format|
      format.html { redirect_to master_maintenance_plans_url, notice: 'Master maintenance plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_maintenance_plan
      @master_maintenance_plan = MasterMaintenancePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_maintenance_plan_params
      params.require(:master_maintenance_plan).permit(
        :lubrication,
        :subject,
        :description,
        :frecuency
      )
      # params.fetch(:master_maintenance_plan, {})
    end
end
