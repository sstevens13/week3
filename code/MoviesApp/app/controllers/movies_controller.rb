class MoviesController < ApplicationController

  def index
    @movies = get_all_movies
  end

  def show
    @movie = get_all_movies[params[:id].to_i - 1]
  end

  def get_all_movies
    [
      { :title => "Apollo 13", :director => "Ron Howard", :year => 1995 },
      { :title => "Lincoln", :director => "Steven Spielberg", :year => 2012 },
      { :title => "Star Wars", :director => "George Lucas", :year => 1977 },
      { :title => "The Dark Knight", :director => "Christopher Nolan", :year => 2008 },
      { :title => "Wall-E", :director => "Andrew Stanton", :year => 2008 }
    ]
  end
end
