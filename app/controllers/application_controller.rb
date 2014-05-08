class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_return_to, :only => [:new], if: :devise_controller?

  private
  def set_return_to
    session[:user_retrun_to] = request.referer
  end
end
