Rails.application.routes.draw do
  devise_for :users
 root 'static_pages#index'

 resources :titles, only: [:index, :show]
 namespace :instructor do 
 	resources :titles, only: [:new, :create, :show] do 
 		resources :programs, only: [:new, :create]
 	end
 	end

end
