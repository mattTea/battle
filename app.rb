require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/attack'

class Battle < Sinatra::Base
  
  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create(player1,player2)
    redirect("/play")
  end

  get "/play" do
    erb(:play)
  end

  get '/attack' do
    Attack.run(@game.not_turn)
    erb(:attack)
  end

  post '/turn_switch' do
    @game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0
end


# To run (one or the other...)
# ruby app.rb
# rackup -p 4567