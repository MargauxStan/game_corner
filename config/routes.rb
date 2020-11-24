Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games do
    resources :bookings, only: [:new, :create, :show]
  end

  namespace :account do
    resources :games, only: [:index, :edit, :update, :destroy]
    resources :bookings, only: [:index, :show] do
      member do
        post :accepted
        post :declined
      end
    end
  end
end
