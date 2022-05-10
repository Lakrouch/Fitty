Rails.application.routes.draw do
	root 'dishes#main_page'
	resources :dishes
end
