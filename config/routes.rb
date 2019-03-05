Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update, :destroy]
  devise_for :users
  root to: 'pages#home'
end
