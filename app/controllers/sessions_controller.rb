class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user = user.authenticate(params[:password])
      session[:current_user] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session.delete(:current_user)
    @current_user = nil
    redirect_to root_path
  end

end
