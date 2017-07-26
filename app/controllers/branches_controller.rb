class BranchesController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!


  def index
    @branches = Branch.all_by_company(params[:company_id])
    @branch = Branch.find(params[:branch_id]) if params[:branch_id].present?

    if @branch.present?
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


  private

  def set_branch
    @branch = Branch.find(params[:id])
  end
end
