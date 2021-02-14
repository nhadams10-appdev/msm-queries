class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details
    the_id = params.fetch("an_id")

    @the_movie = Movie.where({ :id => the_id }).first

    render({ :template => "movie_templates/details.html.erb"})
  end

end