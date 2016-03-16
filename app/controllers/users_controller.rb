class UsersController < ApplicationController
  

  def new 
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "You signed up!"
    else
      @errors = @user.errors.full_messages
      render "users/new"
    end 
  end

  def show
    @user = User.find(session[:user_id])
    @donuts_rated = DonutRating.where(user_id: session[:user_id])
  end

  def update
    @user = @user = User.find(session[:user_id])
    @user.update(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "You updated your profile."
    else
      @errors = @user.errors.full_messages
      render "users/new"
    end 

  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
