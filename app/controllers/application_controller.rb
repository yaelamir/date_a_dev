class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  helper_method :current_dev

  def current_dev
    @current_dev ||= Dev.find(session[:dev_id]) if session[:dev_id]
  end

  def authorize
      redirect_to login_path, alert: 'Not authorized - you must be logged in!' if current_dev.nil?
  end

end
