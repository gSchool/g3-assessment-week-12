class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])

   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to movies_path
   else
     @sign_in_error = "Username / password combination is invalid"
     render :new
   end
 end

  def destroy
    session.clear
    redirect_to root_path, notice:"Come again soon!"
  end
end
