class HomeController < ApplicationController
  
  before_action :authenticate

  def index
  end

  private

  def authenticate
    redirect_to '/signin' unless current_user
  end

end
