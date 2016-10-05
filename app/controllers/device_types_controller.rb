class DeviceTypesController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!
  before_action :set_device_type, only: [:show, :edit, :update, :destroy]

  # GET /device_types
  # GET /device_types.json
  def index
    @device_types = DeviceType.all_by_company(params[:company_id])
    @device_type = DeviceType.find(params[:device_type_id]) if params[:device_type_id].present?
    @devices = Device.all_by_device_type(@device_type) if @device_type.present?
    @master_maintenance_plans = MasterMaintenancePlan.all_by_device_type(@device_type) if @device_type.present?
    if @device_type.present?
      respond_to do |format|
        format.html
        format.json
        format.js
      end
    else
      respond_to do |format|
        format.html
        format.json
      end
    end
  end

  # GET /device_types/1
  # GET /device_types/1.json
  def show
  end

  # GET /device_types/new
  def new
    @device_type = DeviceType.new
  end

  # GET /device_types/1/edit
  def edit
  end

  # POST /device_types
  # POST /device_types.json
  def create
    @device_type = DeviceType.new(device_type_params)
    @device_type.company = @company

    respond_to do |format|
      if @device_type.save
        # format.html { redirect_to @device_type, notice: 'Device type was successfully created.' }
        format.json { render :show, status: :created, location: @device_type }
        format.js
      else
        # format.html { render :new }
        format.json { render json: @device_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /device_types/1
  # PATCH/PUT /device_types/1.json
  def update
    respond_to do |format|
      if @device_type.update(device_type_params)
        # format.html { redirect_to company_device_types_path, notice: 'Device type was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_type }
        format.js
      else
        # format.html { render :edit }
        format.json { render json: @device_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /device_types/1
  # DELETE /device_types/1.json
  def destroy
    @device_type.destroy
    respond_to do |format|
      # format.html { redirect_to device_types_url, notice: 'Device type was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_type
      @device_type = DeviceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_type_params
      params.require(:device_type).permit(:name)
      # params.fetch(:device_type, {})
    end
end
