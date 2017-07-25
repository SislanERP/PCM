class DevicesController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!
  # before_action :set_device, only: [:show]

  def index
    @devices = Device.all_by_company(params[:company_id])
  end

  def show
    @device = Device.find(params[:id])

    @system_devices = @device.other_devices_of_system

    @device_supplies_instrunents = @device.instruments

    @device_supplies_lubricants = @device.lubricants

    @device_supplies_supplies = @device.supplies

  end

  def new
    @device = Device.new
    @branches = Branch.all_by_company(params[:company_id])
  end

  def create
    @device = Device.new(device_params)

    respond_to do |format|
      if @device.save
        format.json { render :show, status: :created, location: @device }
        format.js
      else
        format.html { render :new }
        format.json { render json: @device.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  private

  def set_device
    @device = Device.find(params[:id])
  end
end
