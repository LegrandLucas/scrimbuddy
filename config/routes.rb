Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :teams do
    resources :scrims, only: %i[new create]
  end
  resources :scrims, only: %i[update destroy] do
    resources :reviews, only: %i[new create]
  end
  resources :profiles, only: [:show]
  resources :users do
    resources :messages, only: [:index, :create]
  end
  resources :messages, only: %i[destroy]
  resource :dashboard do
    resources :conversations, only: [:index ,:show]
    get "invitations"
  end
end



