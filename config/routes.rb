Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'home/activity'
  devise_for :users
  resources :users, only: [:index]
  resources :courses
end
