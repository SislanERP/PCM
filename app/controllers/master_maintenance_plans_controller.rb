class MasterMaintenancePlansController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!
  before_action :set_master_maintenance_plan, only: [:show, :edit, :update, :destroy]

  # GET /master_maintenance_plans
  # GET /master_maintenance_plans.json
  def index
    @master_maintenance_plans = MasterMaintenancePlan.all_by_company(params[:company_id])
  end

  # GET /master_maintenance_plans/1
  # GET /master_maintenance_plans/1.json
  def show
    @master_maintenance_plan = MasterMaintenancePlan.find(params[:id])
    @tasks = @master_maintenance_plan.tasks_include_task_type
  end

  # GET /master_maintenance_plans/new
  def new
    @device_type = DeviceType.find(params[:device_type_id])
    @master_maintenance_plan = MasterMaintenancePlan.new
  end

  # GET /master_maintenance_plans/1/edit
  def edit
  end

  # POST /master_maintenance_plans
  # POST /master_maintenance_plans.json
  def create
    @master_maintenance_plan = MasterMaintenancePlan.new(master_maintenance_plan_params)
    @master_maintenance_plan.device_type = DeviceType.find(params[:device_type_id])

    respond_to do |format|
      if @master_maintenance_plan.save
        # format.html { redirect_to @master_maintenance_plan, notice: 'Master maintenance plan was successfully created.' }
        format.json { render :show, status: :created, location: @master_maintenance_plan }
        format.js
      else
        format.html { render :new }
        format.json { render json: @master_maintenance_plan.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /master_maintenance_plans/1
  # PATCH/PUT /master_maintenance_plans/1.json
  def update
    respond_to do |format|
      if @master_maintenance_plan.update(master_maintenance_plan_params)
        # format.html { redirect_to @master_maintenance_plan, notice: 'Master maintenance plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_maintenance_plan }
        format.js
      else
        # format.html { render :edit }
        format.json { render json: @master_maintenance_plan.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /master_maintenance_plans/1
  # DELETE /master_maintenance_plans/1.json
  def destroy
    respond_to do |format|
      if @master_maintenance_plan.destroy
        # format.html { redirect_to company_device_types_path, notice: 'Master maintenance plan was successfully destroyed.' }
        # format.json { head :no_content }
        # format.html { redirect_to company_device_types_url, turbolinks: false, flush: true, status: 303, :formats => [:html] }
        format.json { head :no_content }
        format.js {render js:"window.location.href='#{company_device_types_url}'"}
      else
        format.js
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_maintenance_plan
      @master_maintenance_plan = MasterMaintenancePlan.find(params[:id])
      @device_type = DeviceType.find(params[:device_type_id])
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
