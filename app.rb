require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'Hello!'
end

get '/secret' do
  'secret message 123'
end

get '/cat' do
  @random_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end