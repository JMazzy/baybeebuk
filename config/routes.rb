Rails.application.routes.draw do
  devise_for :users

  resources :memories
  resources :people
  resources :relationships
  resources :static_pages, only: [:index]

  root to: 'static_pages#index'
end
