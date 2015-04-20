class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to movies_path, notice: "You're all signed up!"
    else
      render :new, alert: "Wrong combination"
    end
  end
end
