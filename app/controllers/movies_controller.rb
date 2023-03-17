class MoviesController < ApplicationController
  def create
    # byebug
  #   movie = Movie.create(movie_params)
  # render json: movie, status: :created
   # Movi instead of Movie
   movie = Movi.create(movie_params)
   render json: movie
  end

private

 def movie_params
  params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
 end
 #   def index
 #     movies = Movie.all
 #     render json: movies
 #   end

end
