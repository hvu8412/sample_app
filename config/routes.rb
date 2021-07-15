Rails.application.routes.draw do
  get 'microposts/create'
  get 'microposts/destroy'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  root 'static_pages#home'
  get 'static_pages/help'
  get '/signup', to: 'users#new'
  resources :users
  resources :account_activations, only: :edit
  resources :password_resets
end
