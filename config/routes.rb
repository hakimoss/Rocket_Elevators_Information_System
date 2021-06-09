Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get '/quote', to: 'pages#quote'

  get '/residential', to: 'pages#residential'
  
  get '/commercial', to: 'pages#commercial'

  resources :users, only: [:new, :create]




end
