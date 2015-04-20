Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dashboard#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'reviews/new' => 'reviews#new'
  post 'reviews/new' => 'reviews#create'

  resources :movies do
    resources :reviews, except: :index
  end

  resources :reviews, only: :index
  resources :users, only: [:new, :create]

end
