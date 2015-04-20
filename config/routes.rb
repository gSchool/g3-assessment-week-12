Rails.application.routes.draw do

root 'welcome#index'

resources :users
resources :movies do
  resources :reviews

end
