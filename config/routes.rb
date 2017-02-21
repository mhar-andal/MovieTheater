Rails.application.routes.draw do
  resources :showings, only: [:index, :show] do
    resources :seats, only: [:index] do
      resources :tickets, only: [:new]
    end
  end
  resources :showings, only: [:new]
  resources :movies, only: [:index, :show] do
    resources :orders, only: [:index, :show]
  end
  resources :orders, only: [:index, :show]
  resources :cinemas, only: [:index, :show, :edit]

  post "/showings/:showing_id/seats/:seat_id/tickets/new" => "tickets#create"
  post "/cinemas/:id/edit" => "cinemas#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
