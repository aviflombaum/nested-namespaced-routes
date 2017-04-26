Rails.application.routes.draw do
  
  resources :albums do
    resources :pictures do
      resources :comments do
      end
    end
  end

  namespace :admin do
    resources :albums
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
