require 'sinatra'
require 'sinatra/reloader'
$LOAD_PATH << '.'
require 'passwordcomplexity'
require 'passwordgenerator'

get '/' do
  erb :index
end

post '/form' do
  a = GeneratePassword.new
  len = params[:length].to_i
  complexity = params[:complexity].to_i
  password = a.password_gen(len, complexity)
  @password = password
  erb :index
end
