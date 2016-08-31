Rails.application.routes.draw do
  root 'home#index'

  resources :anthologies, only: [:index, :show]
  resources :comics, only: [:index, :show]
  resources :web_comics, only: [:index, :show]

  # can change to singular resource
  #resource :bio, only: :index
  #resource :contact, only: :index
  get 'bio', to: 'bio#index'
  get 'contact', to: 'contact#index'
end
