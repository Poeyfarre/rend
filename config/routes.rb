Rails.application.routes.draw do
  resources :posts 
  resources :users
  resources :politicians, only: [:show]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
end
