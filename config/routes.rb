Rails.application.routes.draw do
  root 'home#index'

  resources :anthologies, only: :index
  resources :comics, only: :index
  resources :web_comics, only: :index

  get 'bio', to: 'bio#index'
  get 'contact', to: 'contact#index'
end
