class SessionsController < ApplicationController


  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:alert] = "Invalid email or password"
	  render 'new'
    end
  end

  def destroy
    sign_out
    flash[:notice] = "You are signed out"
    redirect_to root_path
  end

end



