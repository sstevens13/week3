PhotosApp::Application.routes.draw do

  get '/photos/new', :controller => 'photos', :action => 'new', :as => 'new_photo'

  get '/photos', :controller => 'photos', :action => 'index', :as => 'photos'
  get '/photos/:id', :controller => 'photos', :action => 'show', :as => 'photo'
  post '/photos', :controller => 'photos', :action => 'create', :as => 'photos'

  get '/photos/:id/edit', :controller => 'photos', :action => 'edit', :as => 'edit_photo'
  put '/photos/:id', :controller => 'photos', :action => 'update'

  delete '/photos/:id', :controller => 'photos', :action => 'destroy'
  #get '/photos/new' => 'Photos#new', :as => 'new_photo'
  #get '/photos' => 'Photos#index', :as => 'photos'
  #get '/photos/:id' => 'Photos#show', :as => 'photo'
  #post '/photos' => 'Photos#create', :as => 'photos'
  #get '/photos/:id/edit' => 'Photos#edit', :as => 'edit_photo'
  #put '/photos/:id' => 'Photos#update'
  #delete '/photos/:id' => 'Photos#destroy'

  get '/rps', :controller => 'rps', :action => 'index', :as => 'rps'
  post '/rps', :controller => 'rps', :action => 'create'

  get '/poker', :controller => 'poker', :action => 'index', :as => 'poker'

  get '/dice', :controller => 'dice', :action => 'index', :as => 'dice'
  post '/dice/roll', :controller => 'dice', :action => 'roll', :as => 'roll'

end
