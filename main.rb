require 'sinatra'
require 'sinatra/reloader'
$LOAD_PATH << '.'
require 'passwordcomplexity'
require 'passwordgenerator'

class Main < Sinatra::Base
  get '/' do
    erb :index
  end
end

post '/form' do
  a = GeneratePassword.new
  len = params[:length].to_i
  complexity = params[:complexity].to_i
  password = a.password_gen(len, complexity)
  @password = password
  erb :index
end
