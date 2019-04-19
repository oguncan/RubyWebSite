Rails.application.routes.draw do
  resources :models
  
  root 'models#index'
  get 'about', to: 'models#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
