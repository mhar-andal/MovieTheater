Rails.application.routes.draw do

  get 'orders/index'

  get 'orders/show'

  resources :showings, only: [:index, :show] do
    resources :seats, only: [:index] do
      resources :tickets, only: [:new]
    end
  end
  resources :showings, only: [:new]
  resources :movies, only: [:index, :show, :new]

  post "/showings/:showing_id/seats/:seat_id/tickets/new" => "tickets#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
