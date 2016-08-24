class HomeController < ApplicationController
  before_action :set_company, except: [:companies]
  before_action :authenticate_user!

  # def companies
  #   @company_users = CompanyUser.where(user: current_user).order(:id)
  #   render :layout => "empty"
  # end

  def index
    @mainTitle = "Welcome in PCM Software Project"
    @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
  end

  def minor
  end

  private

  # def set_company
  #   @company = Company.find(params[:id])
  # end
end
