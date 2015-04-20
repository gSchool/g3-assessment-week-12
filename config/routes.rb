Rails.application.routes.draw do

  resources :users
  resources :movies

  root 'home#index'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/signup' => 'registrations#new'
  post '/signup' => 'registrations#create'

end
