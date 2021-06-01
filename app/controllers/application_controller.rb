class ApplicationController < ActionController::Base

  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?
  helper_method :is_admin?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    return nil if current_user.nil?
    current_user

  end

  def is_admin?
    logged_in? && current_user.admin
  end

  def authorized
    # redirect_to '/' unless logged_in?
  end

end
