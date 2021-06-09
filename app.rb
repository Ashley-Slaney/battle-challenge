require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Battle!'
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