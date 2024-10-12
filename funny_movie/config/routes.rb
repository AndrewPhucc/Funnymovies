Rails.application.routes.draw do
  get "videos/index"
  get "videos/new"
  get "videos/create"
  devise_for :users

  resources :videos, only: [:index, :new, :create]
  root to: "videos#index"


end
