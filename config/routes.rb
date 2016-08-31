Rails.application.routes.draw do
  root 'home#index'

  resources :anthologies, only: [:index, :show]
  resource :bio, only: :show
  resources :comics, only: [:index, :show]
  resource :contact, only: :show
  resources :web_comics, only: [:index, :show]
end
