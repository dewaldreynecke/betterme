Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/confirmation', to: 'pages#confirmation', as: 'confirmation'
  get '/inspiration/random', to: 'inspiration#random', as: 'random_inspiration'

  resources :entries, only: %i[new create]
  resources :moods, only: [:new]
  resources :user, only: [:update]
  resources :themes, only: %i[create index show]
  resources :addresses, only: %i[create destroy]

  get '/entries/:date', to: 'entries#show_by_date', as: 'entries_by_date'
end
