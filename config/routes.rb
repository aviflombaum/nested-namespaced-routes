Rails.application.routes.draw do
  
  resources :albums
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "albums#index"
end
