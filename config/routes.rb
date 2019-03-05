Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resource :users, only: [:show, :edit, :update, :destroy]
end
