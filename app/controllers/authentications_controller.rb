class AuthenticationsController < ApplicationController

def new
  @user = User.new
end

  def create
    @user = User.find_by_username(params[:username])
    if @user && if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end
end

end
