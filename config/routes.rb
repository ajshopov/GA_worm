Rails.application.routes.draw do

  	root to: 'pages#home'

  	get '/login', to: 'sessions#login'

	post '/session', to: 'sessions#create'

 	get '/new', to: 'teachers#new'

	get '/profile', to: 'teachers#profile'

	get '/show', to: 'presentations#show'

	get '/vote', to: 'votes#vote'


  resources :votes
  resources :presentations
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
