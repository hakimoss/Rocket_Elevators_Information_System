Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'



  get '/residential', to: 'pages#residential'
  
  get '/commercial', to: 'pages#commercial'

  get '/quote', to: 'pages#quote'

  get '/quotes' => 'quote#index'

  post '/quotes' => 'quotes#create'

  get '/quotes/new' => 'quotes#new', as: 'new_quote'



end
