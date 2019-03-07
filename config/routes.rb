Rails.application.routes.draw do
  if Rails.env.production?
     get '404', :to => 'pages#home'
     get '500', :to => 'pages#home'
  end

  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'
  resources :trips do
    resources :group_members, only: [:new, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD

=======
  resources :chat_rooms, only: :show do
    resources :messages, only: :create
  end
  mount ActionCable.server => "/cable"
>>>>>>> c2d0d44b98d8d0e25f0abe26b9e8d15f421aed14
end
