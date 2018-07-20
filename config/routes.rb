Rails.application.routes.draw do
  root 'pages#show', page: :home
  resources :users, only: [:new, :create], shallow: true do
    resources :bookmarks, only: [:index, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :routes, shallow: true do
    resources :comments, only: [:create, :new, :destroy]
    resources :ratings, only: [:create]
    put 'bookmark', on: :member
  end

  resources :pictures
  resources :forums do
    resources :answers, only: [:show, :create, :new]
  end  
 
  get '/pages/:page' => 'pages#show'
  get '/bookmarks' => 'bookmarks#index'
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

end
