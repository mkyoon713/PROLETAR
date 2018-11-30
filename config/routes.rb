Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

get 'jobs/:job_id/bookings/:id/confirm', to: 'bookings#confirm', as: 'confirm'
  get "dashboard", to: "pages#dashboard"

  get "dashboard/bookings", to: "pages#dashboardbookings"
  get 'jobs/:job_id/bookings', to: 'bookings#show', as: 'all_bookings'
  resources :jobs do
    resources :bookings, only: [:new, :create, :show, :edit, :update]
  end
  resources :bookings, only: [:destroy]  do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
