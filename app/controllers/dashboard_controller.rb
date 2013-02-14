class DashboardController < ApplicationController
	before_filter :authenticate_user!
	before_filter :stripe_data

  def index
  end

  private
  	def stripe_data
  		current_user.pull_stripe_data
  	end
end