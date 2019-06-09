Rails.application.routes.draw do
  resources :genres
  get 'users/show'
  # get '/chapter/edit' => 'chapter#edit'
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

