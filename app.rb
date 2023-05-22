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
    game.add_frame(construct_frame)

    @frames = game.frames
    @game = game
    return erb(:scorecard)
  end

  private

  def construct_frame
    roll1 = params[:roll1].to_i
    roll2 = params[:roll2].to_i
    roll3 = params[:roll3]
    if roll1 == 10 && roll3.empty?
      frame = Frame.new([10])
    elsif roll3.nil?
      frame = Frame.new([roll1, roll2])
    else
      frame = Frame.new([roll1, roll2, roll3.to_i])
    end
  end
end
