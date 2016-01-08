class SessionsController < ApplicationController
  
  def create 
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to new_session_url, :notice => "Something went wrong, try again."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "You are logged out."
  end
end
