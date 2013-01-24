MoviesApp::Application.routes.draw do

  get '/movies', :controller => 'movies', :action => 'index', :as => :movies

  get '/movies/:id', :controller => 'movies', :action => 'show', :as => :movie

end
