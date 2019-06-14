Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get '/tags/:tag', to: 'posts#index', as: :tag
  resources :genres
  resources :posts do
  resources :chapters
  resources :comments
  end
  root to: 'posts#index'
  mount ActionCable.server => '/cable'
end

