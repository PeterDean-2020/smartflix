require 'faker'

class CreateMovieWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'movie', retry: 0

  def perform(*args)
    Movie.create!(title: Faker::Movie.title)
  end
end
