Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/get_current_user", to: "sessions#get_current_user"

  resources :landlords do
    resources :addresses
 end 

	resources :landlords do
    resources :tenents  
 end 

  resources :tenents do
    resources :reviews
 end 
end 


