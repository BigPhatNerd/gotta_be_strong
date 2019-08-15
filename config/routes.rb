Rails.application.routes.draw do
  devise_for :users
 root 'static_pages#index'

 namespace :instructor do 
 	resources :programs, only: [:new, :create, :show]
 end
end
