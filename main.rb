$LOAD_PATH << '.'
require 'passwordcomplexity'
require 'passwordgenerator'
require 'sinatra'

get '/:len/:complexity' do
  a = GeneratePassword.new
  len = params[:len].to_i
  complexity = params[:complexity].to_i
  password = a.password_gen(len, complexity)
  "This is your new password #{password}"
end
