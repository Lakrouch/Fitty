# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get '/dishes/index', as: 'user_root_url'
  root 'dishes#index'
  put '/users/change_role(/:id)', to: 'users#change_role'
  resources :dishes
  resources :users
  resources :profiles
  resources :ingredients
  resources :notes
end
