Rails.application.routes.draw do
  resources :models
  root 'models#index'
  get "articles" => "pages#articles", as: :articles
  get "projects" => "pages#projects", as: :projects
  get "contact" => "pages#contact", as: :contact
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
