Rails.application.routes.draw do
  
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'schedule' => 'pages#schedule'
  get 'visitors' => 'visitors#index'
  devise_for :users
  resources :users
end
