Rails.application.routes.draw do
  get 'home/index'

  get 'chats/show'
  get 'users/new'
  mount ActionCable.server => '/cable'

  root   'sessions#new'
  #root 'home#index'
  #root to: "chats#show"
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :sessions
  resources :chats
  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
end