Stripeanalytics::Application.routes.draw do
  # resources :customers
  # resources :charges

  match "/dashboard" => "dashboard#index", :as => :user_root

	devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root :to => "home#index"
end
