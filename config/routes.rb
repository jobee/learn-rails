LearnRails::Application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create',via: [:get, :post]
  match 'auth/failure', to: redirect('/'),via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout',via: [:get, :post]

  resources :lists

  resources :products

  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  post 'visitor', to: 'visitors#create'
  # root to: 'visitors#new'
  
end
