Rails.application.routes.draw do
  get 'inspirations/random'
  devise_for :users
  # Defines the root path route ("/")
  root "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/inspiration/random', to: 'inspiration#random', as: 'random_inspiration'

  resources :entries, only: %i[new show create]
  resources :moods, only: [:update]
end
