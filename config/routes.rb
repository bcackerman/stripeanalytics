Stripeanalytics::Application.routes.draw do
  match "/dashboard" => "dashboard#index", :as => :user_root

	devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root :to => "home#index"
end
