class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
  end

private

def user_params
  params.require(:user).permit(:user_name, :password, :id)
end

end
