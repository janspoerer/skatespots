Rails.application.routes.draw do
  devise_for :users
  root to: 'spots#index'

  resources :spots
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spots, only: [ :index, :show ] do
    resources :reviews, only: :create
  end
end
