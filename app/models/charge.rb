# == Schema Information
#
# Table name: charges
#
#  id              :integer          not null, primary key
#  id_charge       :string(255)
#  object_charge   :string(255)
#  livemode        :boolean
#  paid            :boolean
#  amount          :decimal(, )
#  currency        :string(255)
#  refunded        :boolean
#  fee             :decimal(, )
#  card_last4      :string(255)
#  amount_refunded :decimal(, )
#  customer        :string(255)
#  invoice         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  created         :datetime
#

class Charge < ActiveRecord::Base
  attr_accessible :amount, :amount_refunded, :card_last4, :created, :currency, :customer, :fee, :id_charge, :invoice, :livemode, :object_charge, :paid, :refunded, :user_id

  belongs_to :user

end
