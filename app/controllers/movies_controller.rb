class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:id])
    if @movie.save
      redirect_to new_movie_path
    end
  end

end
