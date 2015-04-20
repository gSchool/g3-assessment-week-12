class SessionsController < ApplicationController

  def new
   @user = User.new
 end

 def create
   @user = User.find_by(username: params[:username])

   if @user
     session[:user_id] = @user.id
     redirect_to root_path, notice: 'Hey!'

   end
   else
     flash[:alert] = "Invalid username / password"
   end



end
