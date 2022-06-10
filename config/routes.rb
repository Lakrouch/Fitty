# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registration' }

  get '/dishes/index', as: 'user_root_url'
  root 'dishes#index'
  post '/ingredients/new', to: 'ingredients#create'
  put '/users/change_role(/:id)', to: 'users#change_role'
  resources :dishes
  resources :users
  resources :profiles
  resources :ingredients
  resources :diaries
  resources :notes
end
