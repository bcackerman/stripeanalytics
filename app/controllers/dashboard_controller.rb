class DashboardController < ApplicationController
	before_filter :authenticate_user!
	before_filter :stripe_pull

  def index
  	churn = Computation.new(current_user, Time.zone.now - 30.days, Time.zone.now)
  	@churn_rate = churn.churn_rate
  end

  private
  	def stripe_pull
  		StripePull.new(current_user) if Date.today - current_user.last_time_stripe_pulled.to_date > 1.day 
  	end
end