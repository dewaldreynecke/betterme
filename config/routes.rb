Rails.application.routes.draw do
  get 'user/update'
  get 'inspirations/random'
  devise_for :users
  # Defines the root path route ("/")
  root "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/confirmation', to: 'pages#confirmation', as: 'confirmation'
  get '/inspiration/random', to: 'inspiration#random', as: 'random_inspiration'

  resources :entries, only: %i[new show create]
  resources :moods, only: [:update]
  resources :user, only: [:update]
end
