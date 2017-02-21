Rails.application.routes.draw do
  get 'tickets/new'

  get 'movies/index'

  get 'movies/new'

  get 'cinemas/index'

  get 'cinemas/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
