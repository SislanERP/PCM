class DevicesController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!
  # before_action :set_device, only: [:show]

  def index
    @devices = Device.all_by_company(params[:company_id])
  end

  def show
    @device = Device.find_include_device_supplies(params[:id])

    @system_devices = @device.other_devices_of_system

    @device_supplies_instrunents = @device.instruments

    @device_supplies_lubricants = @device.lubricants

    @device_supplies_supplies = @device.supplies

  end

  private
  def set_device
    @device = Device.find(params[:id])
  end
end
