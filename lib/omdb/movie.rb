module Omdb
  class Movie < Base

    attr_reader :data, :response

    def initialize(data, response)
      @data = data
      @response = response
    end

    def self.find_by_title(title)
      movie = get('', query: { t: title }).parsed_response.transform_keys(&:underscore)
      new(movie.except('response', 'type'), movie['response'])
    end
  end
end
