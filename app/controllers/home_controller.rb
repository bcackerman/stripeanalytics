class HomeController < ApplicationController
	before_filter :check_if_logged_in
	
  def index
  end

  private
  	def check_if_logged_in
  	  if current_user 
  	    redirect_to user_root_path
  	  end
  	end
end
