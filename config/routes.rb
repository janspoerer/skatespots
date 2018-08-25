Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'dashboard#index'
  resources :profiles, only: [:update, :show]

  resources :spots do
    resources :reviews, only: [:new, :create]
    resources :spot_photos, only: [:new, :create]
  end

  resources :likes, only: [] do
    member do
      get 'upvote', to: "likes#upvote"
      get 'downvote', to: "likes#downvote"
    end
  end
end


# resources :contents do
#     member do
#         put "like", to: "contents#like"
#         put "dislike", to: "contents#dislike"
#     end
# end
