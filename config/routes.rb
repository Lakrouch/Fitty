Rails.application.routes.draw do
  devise_for :users

  get '/dishes/index', as: 'user_root_url'
  root 'dishes#index'
  get '/users/list', to: 'users#list'
  post '/users(/:id)', to: 'diaries#create'
  resources :dishes
  resources :users
  resources :profiles
end
