module Omdb
  class Base
    include HTTParty

    base_uri 'http://www.omdbapi.com/'
    default_params apikey: ENV['OMDB_API_KEY']
  end
end
