Rails.application.routes.draw do
  devise_for :users
  root to: 'courses#index'
  resources :courses, only: [:index, :new, :create]
end
