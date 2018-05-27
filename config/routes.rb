Rails.application.routes.draw do
  resources :line_items
  resources :books
  resources :users
  resources :zhanr
#  get 'home#index'
  get "books/index"
root :to => 'index#index'
  get 'index', to: 'index#index'
  get 'edit', to: 'books#edit'
  get'books', to: 'books#index'
  get 'new', to:'books#new'
  get 'show', to: 'books#show'

  get 'auth', to: 'auth#index'
  get 'auth_edit', to: 'auth#edit'
  get'auth_books', to: 'auth#index'
  get 'auth_new', to:'auth#new'
  get 'auth_show', to: 'auth#show'

  get 'zhanr', to: 'zhanr#index'
  get 'zhanr_new', to:'zhanr#new'

devise_scope :user do
  get 'sign_up', to: 'devise/registrations#new'
  get 'sign_in', to: 'devise/sessions#new'
  get 'sign_out', to: 'devise/sessions#destroy'
end
get 'show', to: 'home#show'



  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
