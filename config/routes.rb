Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'



  get '/residential', to: 'pages#residential'
  
  get '/commercial', to: 'pages#commercial'

  get '/quote', to: 'pages#quote'

  post '/quotes' => 'quotes#create'

  get '/quotes/new' => 'quotes#new', as: 'new_quote'


  get 'employee/show'

  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

end
