# service used to do all the Stripe heavy lifting

class StripePull


	# rails knows this is the first method to run through
	def initialize(user)
		@user = user
		pull_stripe_data
	end

	def pull_stripe_data
    # Use Stripe's bindings...
    Rails.logger.info "inside the method"
    stripe_charges = Stripe::Charge.all({}, @user.token)
    stripe_customers = Stripe::Customer.all({}, @user.token)
    # Rails.logger.info "charges: #{stripe_charges}"
    # Rails.logger.info "customers: #{stripe_customers}"

    # loop through & see if that record has been created, if not, create it and assign the var's
    stripe_charges.each do |ch|
    	Rails.logger.info "output #{ch}"
    	new_charge = Charge.find_or_initialize_by_id_charge(ch.id)
    	Rails.logger.info "new charge: #{new_charge}"
    	charges_attributes = {
    		id_charge: ch.id,
    		object_charge: ch.object,
    		created: Time.at(ch.created),
    		livemode: ch.livemode,
    		paid: ch.paid,
    		amount: ch.amount,
    		currency: ch.currency,
    		refunded: ch.refunded,
    		fee: ch.fee,
    		card_last4: ch.card.last4,
    		amount_refunded: ch.amount_refunded,
    		customer: ch.customer,
    		invoice: ch.invoice,
    		user_id: @user.id
    	}
    	Rails.logger.info "attr's: #{charges_attributes}"
    	new_charge.assign_attributes(charges_attributes)
    	Rails.logger.info "new_charge is: #{new_charge}"
    	new_charge.save!
    end
    

    # do the same for customers
    stripe_customers.each do |cu|
    	new_customer = Customer.find_or_initialize_by_id_customer(cu.id)
    	Rails.logger.info "new customers: #{new_customer.attributes}"
    	customers_attributes = {
    		id_customer: cu.id,
    		object_customer: cu.object,
    		created: Time.at(cu.created),
    		livemode: cu.livemode,
    		description: cu.description,
    		card_last4: cu.active_card.last4,
    		discount: cu.discount,
    		subscription_start: Time.at(cu.subscription.start),
    		subscription_status: cu.subscription.status,
    		subscription_customer: cu.subscription.customer,
    		subscription_cancel_at_period_end: cu.subscription.cancel_at_period_end,
    		subscription_current_period_start: Time.at(cu.subscription.current_period_start),
    		subscription_current_period_end: cu.subscription.current_period_end.nil? ? nil : Time.at(cu.subscription.current_period_end),
    		subscription_ended_at: cu.subscription.trial_end.nil? ? nil : Time.at(cu.subscription.trial_end),
    		subscription_trial_start: cu.subscription.trial_start.nil? ? nil : Time.at(cu.subscription.trial_start),
    		subscription_trial_end: cu.subscription.trial_end.nil? ? nil : Time.at(cu.subscription.trial_end),
    		subscription_canceled: cu.subscription.canceled_at.nil? ? nil : Time.at(cu.subscription.canceled_at),
    		subscription_plan_interval: cu.subscription.plan.interval,
    		subscription_plan_name: cu.subscription.plan.name,
    		subscription_plan_amount: cu.subscription.plan.amount,
    		subscription_plan_livemode: cu.subscription.plan.livemode,
    		subscription_plan_trial_period_days: cu.subscription.plan.trial_period_days,
    		user_id: @user.id
    	}
    	new_customer.assign_attributes(customers_attributes)
    	new_customer.save!
    end
	end

end


# @permission = Permission.update_or_create_by_user_id_and_role_id_and_creator_id(@user.id, 2, current_user.id) do |p|
#   p.group_id = @group.id
# end