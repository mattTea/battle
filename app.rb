require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  
  enable :sessions

  get "/" do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect("/play")
  end

  get "/play" do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack($game.player2)
    erb(:attack)
  end

  run! if app_file == $0
end


# To run (one or the other...)
# ruby app.rb
# rackup -p 4567