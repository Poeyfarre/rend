Rails.application.routes.draw do
  resources :posts 
  resources :users, except: [:index]
  resources :politicians, only: [:show]
  resources :scales, only: [:new, :create]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post '/logout', to: 'sessions#destroy'

  root 'users#new'
end
