Rails.application.routes.draw do
  #get 'topics/new'
  get 'sessions/new'
  # get 'users/new'
  # get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  #resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  
  resources :topics do
    resources :comments
  end
  
  #get ''
  #post '/comments/new', to: 'comments#create'

end
