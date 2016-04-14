Rails.application.routes.draw do
  resources :types
  resources :jobs
  resources :roles
  resources :users
  root to: 'visitors#index'
end
