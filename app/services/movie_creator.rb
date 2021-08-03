class MovieCreator < ApplicationService
  include HTTParty
  attr_reader :title

  base_uri 'http://www.omdbapi.com/'
  default_params apikey: ENV['OMDB_API_KEY']

  def initialize(title)
    @title = title
  end

  def call
    movie_data = fetch_movie_data.except('response', 'type')
    create_movie(movie_data)
  end

  def fetch_movie_data
    self.class.get('', query: { t: title }).parsed_response.transform_keys(&:underscore)
  end

  def create_movie(movie_attributes)
    Movie.create!(movie_attributes)
  end
end
