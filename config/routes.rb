Rails.application.routes.draw do
  get 'prompts/create'
  get 'activities/create'
  get 'entries/new'
  get 'entries/create'
  get 'entries/option'
  get 'entries/show'
  get 'moods/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
