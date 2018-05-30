Rails.application.routes.draw do
  resources :vidguks
  get 'abouts/about_us'

  get 'abouts/about_program'

  get 'userparams/new'

  get 'userparams/edit'

  get 'userparams/profile'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :kritics
  resources :zhanrs
  resources :auths
  resources :line_items
  resources :books
  resources :userparams
  resources :vidhucks
  resources :abouts
#  get 'home#index'
  get "books/index"
root :to => 'index#index'
  get 'index', to: 'index#index'

  get 'edit', to: 'books#edit'
  get'books', to: 'books#index'
  get 'new', to:'books#new'
  get 'show', to: 'books#show'

  get 'edit', to: 'zhanr#edit'
  get'zhanr', to: 'zhanr#index'
  get 'new', to:'zhanr#new'
  get 'show', to: 'zhanr#show'

  get 'edit', to: 'auth#edit'
  get'auth', to: 'auth#index'
  get 'new', to:'auth#new'
  get 'show', to: 'auth#show'

  get 'edit', to: 'kritics#edit'
  get'kritics', to: 'kritics#index'
  get 'new', to:'kritics#new'
  get 'show', to: 'kritics#show'

  get 'edit', to: 'vidguks#edit'
  get'vidguks', to: 'vidguks#index'
  get 'new', to:'vidguks#new'
  get 'show', to: 'vidguks#show'


  get 'about_us', to: 'abouts#about_us'
  get 'about_us', to: 'abouts#about_program'

devise_scope :user do
  get 'sign_up', to: 'devise/registrations#new'
  get 'sign_in', to: 'devise/sessions#new'
  get 'sign_out', to: 'devise/sessions#destroy'
end
get 'show', to: 'home#show'
get  'profile', to: 'userparams#profile'
resources :userparams



  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
