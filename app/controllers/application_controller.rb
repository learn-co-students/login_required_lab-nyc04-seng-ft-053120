class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :current_user
  # skip_before_action :current_user, only: [:index]

  def current_user
    session[:name] ||= nil
    session[:name]
  end

end
