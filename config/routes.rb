Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :models
  root 'models#index'
  get "postlar" => "pages#postlar", as: :postlar
  get "projects" => "pages#projects", as: :projects
  get "contact" => "pages#contact", as: :contact
  get 'articles_show' => "pages#articles_show", as: :articles_show
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
