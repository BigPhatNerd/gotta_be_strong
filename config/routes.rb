Rails.application.routes.draw do
  devise_for :users
 root 'static_pages#index'



 resources :titles, only: [:index, :show]
 resources :programs, only: [:index, :show]
 
 resources :max_weights, only: [:index, :new, :create,:show]
 namespace :instructor do 

 	resources :titles, only: [:index, :new, :create, :show, :edit, :update, :destroy], shallow: true do 
 		resources :programs, only: [:index, :new, :create, :show, :edit, :update, :destroy]
 	end
 	end
 	


end
