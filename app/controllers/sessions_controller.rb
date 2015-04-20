class SessionsController < ApplicationController

  def create
    user = User.find_by(username: session_params[:username])
    if user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Successfully logged in!'
    else
      flash.now[:alert] = 'There was a problem logging you in'
      render :new
    end
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end

end
