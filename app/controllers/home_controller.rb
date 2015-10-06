class HomeController < ApplicationController
  def index
  	if !@current_user.nil?
	  	redirect_to "/diary/list"
  		return
  	end
	redirect_to "/home/join"
  end
end
