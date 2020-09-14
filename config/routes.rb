Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :users, only: [:sign_up]
  # get 'posts', to: 'items#index'
end
