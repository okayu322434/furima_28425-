Rails.application.routes.draw do
  devise_for :shippings
  devise_for :comments
  devise_for :managements
  devise_for :goods
  devise_for :users
  root "items#index"
  resources :users, only: [:sign_up]
  # get 'posts', to: 'items#index'
end
