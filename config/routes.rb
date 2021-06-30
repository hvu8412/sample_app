Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  root 'application#hello'
  get 'static_pages/home'
  get 'static_pages/help'
  get '/signup', to: 'users#new'
  resources:users
end
