class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @mainTitle = "Welcome in PCM Software Project"
    @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
  end

  def minor
  end
end
