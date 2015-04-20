class SessionsController < ApplicationController

  def new
    @user = User.find(params[:id])
  end


  def create
    @user = User.find(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
