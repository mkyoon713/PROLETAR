Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "booking", to: "pages#dashboard"

  resources :jobs do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

