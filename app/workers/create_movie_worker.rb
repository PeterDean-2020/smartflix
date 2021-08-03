require 'faker'

class CreateMovieWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'movie', retry: 0

  def perform(title)
    MovieCreator.call(title)
  end
end
