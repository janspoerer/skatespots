Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'dashboard#index'
  resources :profiles, only: [:update, :show]

  resources :spots do
    resources :reviews, only: [:new, :create]
  end

  resources :cities, only: [:new, :create, :update] do
    resources :spots
    resources :users
    resources :favorites, only: [:create, :destroy]
  end

  resources :likes, only: [] do
    member do
      get 'upvote', to: "likes#upvote"
      get 'downvote', to: "likes#downvote"
    end
  end

  resources :favorites, only: [:index]
end
