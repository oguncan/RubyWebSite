Rails.application.routes.draw do
  resources :models
  get 'about', to: 'model#about'
  root 'models#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
