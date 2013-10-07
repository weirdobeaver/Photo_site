Photosite::Application.routes.draw do
  #get "users/new"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/tirowka', to: 'sessions#new',     via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'  
end
