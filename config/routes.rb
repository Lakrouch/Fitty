Rails.application.routes.draw do
  devise_for :users do
	  get '/users/sign_out', to: 'dishes#main_page'
  end

  get 'users/profile', as: 'user_root_url'
	root 'dishes#main_page'
	resources :dishes
  resources :users
end
