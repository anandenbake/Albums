require 'api_constraints'
Rails.application.routes.draw do
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'welcomes#index'

  #get 'auth/:provider/callback', to: 'sessions#create'
  #get 'auth/failure', to: redirect('/')
  #get 'signout', to: 'sessions#destroy', as: 'signout'

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :albums
    end
  end

  devise_for :users, 
 controllers: { sessions: 'users/sessions', confirmations: 'users/confirmations', registrations: 'users/registrations',passwords: 'users/passwords',:omniauth_callbacks => "users/omniauth_callbacks" } 
  	
  	


  	resources :albums do
  	resources :photos
  end
end
