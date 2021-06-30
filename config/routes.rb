Rails.application.routes.draw do
  root 'application#hello'
  get 'static_pages/home'
  get 'static_pages/help'
  get '/signup', to: 'users#new'
  resources:users
end
