LearnRails::Application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  post 'visitor', to: 'visitors#create'
  # root to: 'visitors#new'
end
