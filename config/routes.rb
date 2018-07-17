Rails.application.routes.draw do
  root 'pages#show', page: :home
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :routes, shallow: true do
    resources :comments, only: [:create, :new, :destroy]
    resources :ratings, only: [:create]
  end
  resources :pictures

  get '/pages/:page' => 'pages#show'

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

end
