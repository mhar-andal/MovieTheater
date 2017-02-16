Rails.application.routes.draw do
  get 'cinemas/index'

  get 'cinemas/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'showings#index'
end
