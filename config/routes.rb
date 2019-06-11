Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :genres
  get 'users/show'
  devise_for :users
  resources :users
  resources :posts do
  resources :chapters
  resources :comments
  end
  root to: 'posts#index'
end

