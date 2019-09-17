Rails.application.routes.draw do
	devise_for :users
	root 'static_pages#index'

namespace :instructor do 
		resources :program_names do 
			resources :weeks
		end
	end
	
	namespace :instructor do 
		resources :weeks do
			resources :titles
		end
	end
	namespace :instructor do
		resources :titles do
			resources :programs

		end	
	end
	namespace :instructor do 
		resources :weeks do
			resources :titles do 
				resources :programs 
			end
		end
	end
	
	resources :program_names, only: [:index, :show] do 
		resources :weeks, only: [:index, :show]
	end
	resources :weeks, only: [:index, :show] do 
		resources :titles, only: [:index, :show, ]
	end
	resources :titles, only: [:index, :show, :edit, :update] do
		resources :programs, only: [:index, :show]
	end

put 'complete_title', to: 'titles#complete', as: :complete_titles
	resources :max_weights, only: [:index, :new, :create, :show]
	
end



