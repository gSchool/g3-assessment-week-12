class RegistrationsController < ApplicationController

  def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id
    redirect_to new_project_path, notice: 'User Successfully Created!'
  else
    render :new
  end
end

private

def user_params
  params.require(:user).permit(:user_name, :password)
end
