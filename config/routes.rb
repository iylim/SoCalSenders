Rails.application.routes.draw do
  root 'pages#show', page: :home
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :routes
  resources :pictures
  resources :ratings, only: [:update]
  get '/pages/:page' => 'pages#show'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

end
