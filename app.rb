require 'sinatra/base'

class Battle < Sinatra::Base
  

  get '/' do
    "Testing infrastructure working!"
  end

  run! if app_file ==$0
end



# To run (one or the other...)
# ruby my_app.rb
# rackup -p 4567