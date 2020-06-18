Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cocktails do
    collection do
      get :dashboard
    end
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
