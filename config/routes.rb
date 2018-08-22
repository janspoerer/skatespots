Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :spots

  get 'dashboard', to: 'dashboard#index'
  resources :profiles, only: [:update, :show]

  resources :spots, only: [ :index, :show ] do
    resources :reviews, only: :create
  end
end
