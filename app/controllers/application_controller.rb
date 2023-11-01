class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  before_action :authenticate_user!
end

private

def authenticate_user!
  redirect_to login_path unless current_user
end
