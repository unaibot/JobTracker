Rails.application.routes.draw do
 
	root 'jobs#index'
	resources :jobs
	get '/jobs/new', to: 'jobs#new'
	get '/jobs/show', to: 'jobs#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
