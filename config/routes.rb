Rails.application.routes.draw do
  devise_for :users
  root to: "goods#index"
  resources :goods do
    resources :orders, only:[:create, :index]
  end
end
