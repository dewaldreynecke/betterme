Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :entries, only: %i[new show create]
  resources :moods, only: [:update]
end
