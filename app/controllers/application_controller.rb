class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    require_login
  end

  def current_user
    session[:name]
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end

end
