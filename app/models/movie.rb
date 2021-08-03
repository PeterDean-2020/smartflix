class Movie < ApplicationRecord
  include HTTParty

  base_uri 'http://www.omdbapi.com/'
  default_params apikey: ENV['OMDB_API_KEY']

  def find(title:)
    response = self.class.get('', query: { t: title })
  end
end
