class SessionController < ApplicationController

   def create
      @user = User.find(params[:username])
      if user && user.authenticate(params[:password])
         session[:user_id] = @user.id
         redirect_to movies_path
      else
         render :new
      end
   end

   def destroy
      session.destroy
      redirect_to root_path
   end
end
