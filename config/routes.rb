Rails.application.routes.draw do
  resources :showings, only: [:new]
  resources :showings, only: [:index, :show] do
    resources :seats, only: [:index] do
      resources :tickets, only: [:new]
    end
  end
  get "/orders/all" => "orders#all"
  get "/movies/:movie_id/orders" => "orders#show"
  get "/movies" => "movies#index"
  resources :orders, only: [:index, :show]
  resources :movies, only: [:show]
  resources :cinemas, only: [:index, :show, :edit, :new]
  post "/showings/:showing_id/seats/:seat_id/tickets/new" => "tickets#create"
  post "/cinemas/:id/edit" => "cinemas#update"
  post "/cinemas/new" => "cinemas#create"
  post "/showings/new" => "showings#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
