Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", sessions: "users/sessions" }
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get '/quote', to: 'pages#quote'

  get '/residential', to: 'pages#residential'
  
  get '/commercial', to: 'pages#commercial'

  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

end
