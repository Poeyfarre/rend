Rails.application.routes.draw do
  resources :posts do 
    resources :comments
  end
  resources :users
  resources :politicians
  root "posts#index"

  get '/about', to: 'static_pages#about'
end
