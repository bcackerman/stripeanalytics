# do all the math in here
class Computation 
	def initialize(user, start_date, end_date)
		@user = user
		@start_date = start_date
		@end_date = end_date
	end

	def churn_rate
		# total customers at the beginning of the period who are paying / number of customers who left
		total_customers = @user.customers.where(:subscription_status => "active", :subscription_start => @start_date).count
		customers_that_left = @user.customers.where(:subscription_status => "canceled", :subscription_canceled => @start_date..@end_date).count
		customers_that_left == 0 ? 0 : total_customers / customers_that_left
	end
end