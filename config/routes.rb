Rails.application.routes.draw do
  resources :portfolios
  resources :profiles
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'tops#home'
  devise_for :users
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
