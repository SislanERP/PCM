class DevicesController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!

  def index
    @devices = Device.devices_by_company(params[:company_id])

    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end
end
