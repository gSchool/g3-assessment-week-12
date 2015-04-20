class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      session[:user_id] = user.id
      redirect_to root_path
      flash[:notice] = "Logged in!"
    else
      flash.now[:alert] = "Email/password combination is invalid."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged Out!"
  end

end
