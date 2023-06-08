Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :entries, only: %i[new create]
  resources :moods, only: [:update]
  get '/entries/:date', to: 'entries#show_by_date', as: 'entries_by_date'
end
