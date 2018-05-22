Rails.application.routes.draw do
  resources :books
  resources :line_items
  resources :products
   get "products/index"

 root :to => 'books#index'

 get 'edit', to: 'books#edit'
  get'index', to: 'books#index'
  get 'new', to:'books#new'
  get 'show', to: 'books#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
