Rails.application.routes.draw do
  devise_for :users
 root 'static_pages#index'




 resources :titles, only: [:index, :show]
 resources :max_weights, only: [:new, :create,:show, :edit, :update, :destroy]
 namespace :instructor do 
 	resources :titles, only: [:index, :new, :create, :show, :edit, :update, :destroy] do 
 		resources :programs, only: [:index, :new, :create, :edit, :update, :destroy]
 	end
 	end
 	

end
