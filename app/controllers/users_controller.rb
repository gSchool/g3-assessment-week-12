class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password))

    if @user.save
      session[:current_user] = @user.id
      redirect_to root_path, notice: 'user was created'
    else
      render :new
    end
  end

end
