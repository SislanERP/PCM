class PlantsController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!

  def index
    @branch = Branch.find(params[:branch_id]) if params[:branch_id].present?
    @plants = Plant.all_by_branch(@branch) if @branch.present?


    respond_to do |format|
      format.html
      format.json
      format.js
    end

  end

end
