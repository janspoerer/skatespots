Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'dashboard#index'
  resources :profiles, only: [:update, :show]

  resources :spots do
    resources :reviews, only: [:new, :create, :destroy]
    resources :favorites, only: [:create, :destroy]
    resources :likes, only: :create
    resources :events, only: [:show] do
      resources :participants, only: [:create, :destroy]
    end
  end

  resources :likes, only: :destroy
  resources :favorites, only: [:index]
  resources :events, only: [:index, :new, :create]

end
