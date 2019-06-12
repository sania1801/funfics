Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :genres
  devise_for :users
  resources :users
  resources :posts do
  resources :chapters
  resources :comments
  end
  get '/users/:id' => "users#show"
  root to: 'posts#index'
  mount ActionCable.server => '/cable'
end

