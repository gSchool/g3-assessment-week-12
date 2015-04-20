class UsersController < ApplicationController
  def new
    @user = User.new
    if @user.save
      redirect_to '/'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    end
  end

private

def user_params
  params.require(:user).permit(:user_name, :password, :password_confimation, :id)
end

end
