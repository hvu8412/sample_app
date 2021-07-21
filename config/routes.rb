Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  root 'static_pages#home'
  get 'static_pages/help'
  get '/signup', to: 'users#new'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations,  only: :edit
  resources :password_resets,      only: [:new, :create, :edit, :update]
  resources :microposts,           only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
