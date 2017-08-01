class DashboardsController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!

  def index
    @branches = @company.branchs

    @branch = Branch.find(params[:branch_id]) if params[:branch_id].present?
    @plants = @branch.plants if @branch.present?

    @plant = Plant.find(params[:plant_id]) if params[:plant_id].present?
    @systems = @plant.systems if @plant

    respond_to do |format|
      format.html
      format.json
      format.js
    end

  end

end
