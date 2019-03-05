Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resource :users, only: [:show, :edit, :update, :destroy]
end
