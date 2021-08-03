class MovieCreator < ApplicationService
  include Omdb

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def call
    movie = Omdb::Movie.find_by_title(title)
    create_movie(movie.data) if movie.response == 'True'
  end

  def create_movie(movie_attributes)
    ::Movie.create!(movie_attributes)
  end
end
