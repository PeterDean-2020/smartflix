class MoviesController < ApplicationController

  def index
    movie = Movie.find_by(title: params[:title])
    if movie
      render json: movie
    else
      CreateMovieWorker.perform_async(params[:title])
      render plain: 'We do not know that movie but we are looking it up now, try again later'
    end
  end
end
