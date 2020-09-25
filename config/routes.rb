Rails.application.routes.draw do
  devise_for :users
  root "goods#index"
  # resources :users, only: [:sign_up]
  # resources :new, to: 'goots#get'
  resources :goods

end
