class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_filter :require_login

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  private

  def require_login
    unless current_user
	    flash[:notice] = "Please log in to continue."
	    redirect_to login_url
	  end
  end

end
