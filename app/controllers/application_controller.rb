class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def auth
    unless session[:user_id]
      flash[:plzsign] = "Please sign in with facebook!"
      redirect_to root_path
    end
  end
end
