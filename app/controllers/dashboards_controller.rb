class DashboardsController < ApplicationController
  before_action :set_company
  before_action :authenticate_user!

  def index
    @branches = Branch.all_by_company(params[:company_id])
  end

end
