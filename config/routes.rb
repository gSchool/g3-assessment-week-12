Rails.application.routes.draw do

root 'welcome#index'

  get '/sign-up' => 'users#new', as: :signup
  post '/sign-up' => 'users#create'
  get 'sign-in' => 'sessions#new', as: :signin
  post '/sign-in' => 'sessions#create'
  get '/sign-out' => 'sessions#destroy', as: :signout

resources :users
resources :movies do
  resources :reviews
end
end
