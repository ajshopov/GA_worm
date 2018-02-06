Rails.application.routes.draw do

  root to: 'pages#home' #shows homepage

  get '/login', to: 'sessions#login' #login page

	post '/session', to: 'sessions#create' #no page view

 	get '/new', to: 'teachers#new' #routes to register page

	get '/teachers/:id', to: 'teachers#profile' #routes to dashboard view for teachers only

  get '/presentations/new', to: 'presentations#create' #routes to page where new presentation can be created

	post '/presentations/show', to: 'presentations#show' #no page view

  get '/presentations/:id/show', to: 'presentations#show' # routes to to view of historic presentation

	get '/presentations/:id/vote', to: 'votes#vote' #routes to page to vote for specific presentation


  resources :votes
  resources :presentations
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
