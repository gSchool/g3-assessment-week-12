class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
   @user = User.new(params.require(:user).permit(:username, :password))
   if @user.save
     session[:user_id] = @user.id
     redirect_to root_path
   else
     render :new
   end
 end

 def signup
   @user = User.new
 end

end
