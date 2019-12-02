Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :teams do
    resources :scrims, only: %i[new create]
  end
  resources :scrims, only: %i[udpate destroy] do
    resources :reviews, only: %i[new create]
  end
  resources :profile, only: [:show]
  get '/dashboard', to: "profiles#dashboard"
  get 'conversations', to: 'messages#conversations'
  resources :users do
    resources :messages, only: [:index, :create]
  end
  resources :messages, only: %i[destroy]
end



