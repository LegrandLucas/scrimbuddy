Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users do
    resources :messages, only: %i[index show new create]
  end
  resources :teams do
    resources :scrims, only: %i[new create]
  end
  resources :scrims, only: %i[udpate destroy] do
    resources :reviews, only: %i[new create]
  end
  resources :messages, only: %i[destroy]
end
