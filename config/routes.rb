Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cocktails do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
