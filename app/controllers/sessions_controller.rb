class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Signed in"
    else
      render :new, notice: "Incorrect Credentials"
    end
  end

  def destroy
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = nil
      redirect_to root_path, notice: "Signed out"
    else
      redirect_to root_path
    end
  end
end
