Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:new, :create]
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  resources :movies, only: [:index, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:index, :new, :create]
end
