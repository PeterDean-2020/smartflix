require 'sidekiq/web'

Rails.application.routes.draw do

  mount Sidekiq::Web => "/sidekiq" # mount Sidekiq::Web in your Rails app

  resources :movies, only: %i[index], param: :title
end
