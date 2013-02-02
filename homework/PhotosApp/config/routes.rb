PhotosApp::Application.routes.draw do

  get '/photos/new', :controller => 'photos', :action => 'new', :as => 'new_photo'
  #get '/photos/new' => 'Photos#new', :as => 'new_photo'

  get '/photos', :controller => 'photos', :action => 'index', :as => 'photos'
  #get '/photos' => 'Photos#index', :as => 'photos'
  get '/photos/:id', :controller => 'photos', :action => 'show', :as => 'photo'
  #get '/photos/:id' => 'Photos#show', :as => 'photo'
  post '/photos', :controller => 'photos', :action => 'create', :as => 'photos'
  #post '/photos' => 'Photos#create', :as => 'photos'

  get '/photos/:id/edit', :controller => 'photos', :action => 'edit', :as => 'edit_photo'
  #get '/photos/:id/edit' => 'Photos#edit', :as => 'edit_photo'
  put '/photos/:id', :controller => 'photos', :action => 'update'
  #put '/photos/:id' => 'Photos#update'

  delete '/photos/:id', :controller => 'photos', :action => 'destroy'
  #delete '/photos/:id' => 'Photos#destroy'

end
