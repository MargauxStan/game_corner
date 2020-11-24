Rails.application.routes.draw do
  namespace :account do
    get 'bookings/index'
    get 'bookings/accepted'
    get 'bookings/declined'
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]

  namespace :account do
    resources :games, only: [:index, :edit, :update, :destroy]
    resources :bookings, only: [:index, :show] do
      member do
        patch :accepted
        patch :declined
      end
    end
  end
end
