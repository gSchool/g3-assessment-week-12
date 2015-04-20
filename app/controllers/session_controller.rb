class SessionController < ApplicationController

  def create
     @user = User.find(params[:username])
     @user.authenticate(params[:password])
     session[:user_id] = @user.id

  end
end
