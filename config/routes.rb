Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  resources :trips do
    resources :group_members, only: [:new, :create, :destroy, :index, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]

  resources :chat_rooms, only: :show do
    resources :messages, only: :create
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end


  mount ActionCable.server => "/cable"
end
