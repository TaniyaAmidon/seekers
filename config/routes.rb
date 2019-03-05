Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :groups, only: [:new, :create, :destroy]
  resource :users, only: [:show, :edit, :update, :destroy]
end
