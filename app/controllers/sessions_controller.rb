class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to movies_path
    else
      flash[:alert] = "Incorrect username/password"
      render :new
    end
  end
end
