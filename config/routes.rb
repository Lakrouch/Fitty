Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registration"}

  get '/dishes/index', as: 'user_root_url'
  root 'dishes#index'
  post '/users(/:id)', to: 'diaries#create'
  post '/ingredients/new', to: 'ingredients#create'
  put '/users/change_role(/:id)', to: 'users#change_role'
  resources :dishes
  resources :users
  resources :profiles
  resources :ingredients
end
