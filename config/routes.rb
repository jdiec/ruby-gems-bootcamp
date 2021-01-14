Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :users
  resources :users, only: [:index]
  resources :courses
end
