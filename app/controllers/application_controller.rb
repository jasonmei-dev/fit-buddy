class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :redirect_if_not_logged_in

  def home
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def redirect_if_logged_in
    if logged_in?
       flash[:error] = "You are already logged in as #{current_user.username}!"
       redirect_to user_path(current_user)
     end
  end

  def redirect_if_not_logged_in
    if !logged_in?
      flash[:error] = "You must be logged in to view that page!"
      redirect_to root_path
    end
  end
end
