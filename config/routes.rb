Rails.application.routes.draw do
  resources :cinemas, only: [:index, :show, :new] do
    resources :movies, only: [:index] do
      resources :showings, only: [:index, :show] do
        resources :seats, only: [:index] do
          resources :tickets, only: [:new]
        end
      end
    end
  end
  resources :showings, only: [:new]
  resources :movies, only: [:index, :show, :new]

  post "/cinemas/:id/movies/:id/showings/:id/seats/:id/tickets/new" => "tickets#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
