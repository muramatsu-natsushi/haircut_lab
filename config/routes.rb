Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  
  get 'home/index'
  get 'home/show'
  
  devise_scope :user do
    get 'sign_out', to: "sessions#destroy"
  end
  
  root to: 'home#index'
end
