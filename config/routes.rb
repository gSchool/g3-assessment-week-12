Rails.application.routes.draw do

  resources :users
  resources :movies do
    resources :reviews
  end

  root 'home#index'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/signup' => 'registrations#new'
  post '/signup' => 'registrations#create'

  get '/reviews' => 'reviews#index'
  get '/reviews/new' => 'reviews#new'
  post '/reviews' => 'reviews#create'

end
