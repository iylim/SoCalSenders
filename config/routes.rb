Rails.application.routes.draw do
  root 'pages#show', page: :home
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :routes
  resources :pictures

  get '/routes/:id/ratings/new' => 'ratings#new'
  get '/routes/:id/comments/new' => 'comments#new'
  post '/comments' => 'comments#create'
  post '/ratings' => 'ratings#create'
  get '/pages/:page' => 'pages#show'

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

end
