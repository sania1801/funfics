Rails.application.routes.draw do
  get 'user_profile/index', as: :user
  get 'user_posts/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get '/tags/:tag', to: 'posts#index', as: :tag
  resources :user_profile
  resources :genres
  resources :posts do
  resources :chapters
  resources :comments
  end
  root to: 'posts#index'
  mount ActionCable.server => '/cable'
end

