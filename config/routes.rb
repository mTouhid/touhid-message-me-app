Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
  resources :messages, only: [:create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'

  mount ActionCable.server, at: '/cable'
end
