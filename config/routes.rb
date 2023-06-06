Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "pages#home"

  resources :entries, only: %i[show create]
  resources :moods, only: %i[create]

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get 'entries/option', to: 'entries#option', as: 'entry_option'
  get 'entries/newguided', to: 'entries#newguided', as: 'new_entry_guided'
  get 'entries/newfree', to: 'entries#newfree', as: 'new_entry_free'
end
