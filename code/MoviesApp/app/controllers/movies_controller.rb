class MoviesController < ApplicationController

  def new

  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.director = params[:director]
    @movie.year = params[:year]
    @movie.save
    flash[:info] = "You've added a movie!"
    redirect_to movies_url
  end

  def destroy
    @movie = Movie.find_by_id(params[:id])
    @movie.destroy
    redirect_to movies_url
  end
  def index
    @movies = Movie.all
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
