Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:new, :create]
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  resources :movies, only: [:index, :new, :create]
  resources :reviews, only: [:index]
end
