Rails.application.routes.draw do
  if Rails.env.production?
     get '404', :to => 'pages#home'
     get '500', :to => 'pages#home'
  end

  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
end
