Rails.application.routes.draw do
  devise_for :users
  root to: "goods#index"
  # resources :users, only: [:sign_up]
  # resources :new, to: 'goots#get'
  resources :goods do
    resources :orders, only:[:create, :index]
  end
end
