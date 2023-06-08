Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
<<<<<<< HEAD
  get 'entries/option', to: 'entries#option', as: 'entry_option'
  get 'entries/newguided', to: 'entries#newguided', as: 'new_entry_guided'
  get 'entries/newfree', to: 'entries#newfree', as: 'new_entry_free'
  get '/entries/:date', to: 'entries#show_by_date', as: 'entries_by_date'

  resources :entries, only: %i[create]
  resources :moods, only: %i[create]
=======

  resources :entries, only: %i[new show create]
  resources :moods, only: [:update]
>>>>>>> origin
end
