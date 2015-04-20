class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      session[:user_id] = @user.id
      redirect_to movies_path, notice: "You're all signed up!"
    else
      render :new
    end
  end

end
