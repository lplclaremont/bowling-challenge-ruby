require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bowling_game'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  get '/scorecard' do
    return erb(:scorecard)
  end
end
