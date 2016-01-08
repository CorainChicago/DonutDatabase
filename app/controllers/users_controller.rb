class UsersController < ApplicationController
  

  def new 
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Signed up!"
    else
      @errors = @user.errors.full_messages
      redirect_to new_user_url, :notice => "Something went wrong, try again."
    end 
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
