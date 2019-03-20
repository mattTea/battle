require 'sinatra/base'

class Battle < Sinatra::Base
  
  enable :sessions

  get "/" do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post "/names" do
    session[:player1] = params[:player_1_name]
    session[:player2] = params[:player_2_name]
    redirect("/play")
  end

  get "/play" do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  run! if app_file ==$0
end



# To run (one or the other...)
# ruby app.rb
# rackup -p 4567