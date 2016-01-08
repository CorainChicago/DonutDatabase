module SessionsHelper
  def logged_in
    return true if session[:user_id] != nil
  end
end
