require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bowling_game'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  game = BowlingGame.new

  get '/scorecard' do
    @frames = []
    return erb(:scorecard)
  end

  post '/scorecard' do
    roll1 = params[:roll1].to_i
    roll2 = params[:roll2].to_i
    if roll1 == 10
      frame = Frame.new([10])
    else
      frame = Frame.new([roll1, roll2])
    end
    game.add_frame(frame)

    @frames = game.frames
    @game = game
    return erb(:scorecard)
  end
end
