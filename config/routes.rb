Rails.application.routes.draw do
  
  root 'nacivt#main'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :clubs
  resources :teams
  resources :tournaments
  resources :users

  namespace :admin do
  end

end
