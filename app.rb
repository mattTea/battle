require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  
  enable :sessions

  get "/" do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect("/play")
  end

  get "/play" do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    $player2.attack
    @player2_hit_points = $player2.hit_points
    erb(:attack)
  end

  run! if app_file ==$0
end



# To run (one or the other...)
# ruby app.rb
# rackup -p 4567