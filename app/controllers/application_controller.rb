class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  before_filter :login_check
   
  def login_check
    @current_user = nil
    if !session[:user_id].nil?
      begin
        @current_user = User.find(session[:user_id])
      rescue
        reset_session
        redirect_to '/home/join'
      end
    end
  end
end
