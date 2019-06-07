Rails.application.routes.draw do

	root to: 'pages#home'

	get '/presentations/check', to: 'presentations#check'
	#delete '/presentations/:id', to: 'presentation#destroy'

	resources :votes
  resources :presentations
  resources :teachers
  # session could be a resource
  # active record can set uuid as default find()
  # namespace: api do
  #   resource: votes
  # end

  get '/login', to: 'session#new'
	post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'
	get '/presentations/:uuid/vote', to: 'presentations#vote' #routes to page to vote for specific presentation
	# get '/presentations/:id/show', to: 'presentations#show' #routes to page to vote for specific presentation
  get '/api/votes', to: 'votes#api_index'



	# get '/login', to: 'sessions#login'
  # get '/new', to: 'teachers#new' #routes to register page

  # get '/presentations/new', to: 'presentations#create' #routes to page where new presentation can be created

  #post '/presentations/show', to: 'presentations#show' #no page view

  #get '/presentations/:id/show', to: 'presentations#show' # routes to to view of historic presentation


	#get '/teachers/:id', to: 'teachers#profile' #routes to dashboard view for teachers only
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
