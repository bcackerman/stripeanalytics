# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130219033407) do

  create_table "charges", :force => true do |t|
    t.string   "id_charge"
    t.string   "object_charge"
    t.boolean  "livemode"
    t.boolean  "paid"
    t.decimal  "amount"
    t.string   "currency"
    t.boolean  "refunded"
    t.decimal  "fee"
    t.string   "card_last4"
    t.decimal  "amount_refunded"
    t.string   "customer"
    t.string   "invoice"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
    t.datetime "created"
  end

  add_index "charges", ["user_id"], :name => "index_charges_on_user_id"

  create_table "customers", :force => true do |t|
    t.string   "id_customer"
    t.string   "object_customer"
    t.datetime "created"
    t.boolean  "livemode"
    t.string   "description"
    t.string   "card_last4"
    t.decimal  "discount"
    t.datetime "subscription_start"
    t.boolean  "subscription_status"
    t.string   "subscription_customer"
    t.boolean  "subscription_cancel_at_period_end"
    t.datetime "subscription_current_period_start"
    t.datetime "subscription_current_period_end"
    t.datetime "subscription_ended_at"
    t.datetime "subscription_trial_start"
    t.datetime "subscription_trial_end"
    t.datetime "subscription_canceled"
    t.string   "subscription_plan_interval"
    t.string   "subscription_plan_name"
    t.decimal  "subscription_plan_amount"
    t.boolean  "subscription_plan_livemode"
    t.integer  "subscription_plan_trial_period_days"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "user_id"
  end

  add_index "customers", ["user_id"], :name => "index_customers_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                   :default => "", :null => false
    t.string   "encrypted_password",      :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.boolean  "livemode"
    t.datetime "last_time_stripe_pulled"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["last_time_stripe_pulled"], :name => "index_users_on_last_time_stripe_pulled"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
