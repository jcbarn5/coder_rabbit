class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_login
    redirect_to "/users/index" unless session[:user_id]
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def res_session
    reset_session
    render "users/index.html.erb"
  end

  helper_method :current_user

end
