Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "dashboard", to: "pages#dashboard"

  get "dashboard/bookings", to: "pages#dashboardbookings"

  resources :jobs do
    resources :bookings, only: [:new, :create, :show, :edit, :update]
  end
  resources :bookings, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

