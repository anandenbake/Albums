Rails.application.routes.draw do
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'welcomes#index'

  devise_for :users, 
 controllers: { sessions: 'users/sessions', confirmations: 'users/confirmations', registrations: 'users/registrations',passwords: 'users/passwords' } 
  	
  	


  	resources :albums do
  	resources :photos
  end
end
