Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'schedule' => 'pages#schedule'
  get 'visitors' => 'visitors#index'
  devise_for :users
  resources :users
end
