class DevicesController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!
  # before_action :set_device, only: [:show]

  def index
    @devices = Device.devices_by_company(params[:company_id])
  end

  def show
    @device = Device.includes(:device_supplies).find(params[:id])

    @instrunents = @device.device_supplies.includes(:instrument_type, :supply).where.not(instrument_type_id: nil)

    @lubricants = @device.device_supplies.includes(:supply).where(lubrication: true)

    @supplies = @device.device_supplies.includes(:supply).where(lubrication: false, instrument_type_id: nil)

    # render :layout => "layout_show"
  end

  private
  def set_device
    @device = Device.find(params[:id])
  end
end
