class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    @user = session[:name]
    if @user.empty?
      redirect_to login_path
    else
      render "hello"
    end
  end

  def current_user
    session[:name] ||= nil
  end


end
