require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1_hp = 100
    @player_2_hp = 100
    erb(:play)
  end

  get '/attack' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
















# get '/' do
#   'Hello!'
# end

# get '/secret' do
#   'secret message 123'
# end

# get '/random-cat' do
#   @name = ["Amigo", "Misty", "Almond"].sample
#   erb(:index)
# end

# post '/named-cat' do
#   p params
#   @name = params[:name]
#   erb(:index)
# end

# get '/form' do
#   erb(:form)
# end