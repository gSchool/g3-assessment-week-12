Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dashboard#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  get 'new/review' => 'reviews#new'

  resources :movies do
    resources :reviews
  end

  resources :users, only: [:new, :create]
  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

end
