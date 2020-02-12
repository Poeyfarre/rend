Rails.application.routes.draw do
  resources :posts do 
    resources :comments
  end
  resources :users
  resources :politicians
  resources :sessions

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
end
