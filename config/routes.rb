Rails.application.routes.draw do
  get 'users/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users
  resources :posts do
  resources :chapters
  resources :comments
  end
  root to: 'posts#index'
  mount ActionCable.server => '/cable'
end

