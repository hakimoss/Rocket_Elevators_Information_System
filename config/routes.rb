Rails.application.routes.draw do
  get 'addresses/new'
  get 'addresses/create'
  get 'leads/new'
  get 'leads/create'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
  resources :quotes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'



  get "/home", to: "pages#home"
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'
  get '/quote', to: 'pages#quote'



  get '/quotes' => 'quote#index'

  post '/quotes' => 'quotes#create'




  get 'employee/show'

  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

end
