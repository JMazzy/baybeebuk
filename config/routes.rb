Rails.application.routes.draw do
  devise_for :users

  resources :memories
  resources :people
  resources :relationships

  root to: 'memories#index'
end
