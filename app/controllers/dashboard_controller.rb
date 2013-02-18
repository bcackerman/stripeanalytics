class DashboardController < ApplicationController
	before_filter :authenticate_user!

  def index
  	stripe_data = StripePull.new(current_user)
  end

  	
end