Rails.application.routes.draw do
  root to: 'pages#home'
  resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy, :new, :create]
end
