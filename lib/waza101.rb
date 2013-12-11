require 'sinatra/base'
require 'sinatra/partial'

class Spike < Sinatra::Base

set :views, File.join(File.dirname(__FILE__), '..', 'views')
	set :public_folder, File.join(File.dirname(__FILE__), '..', 'public')
	set :partial_template_engine, :erb	

get '/' do
    erb :index
end

get '/dashboard' do
    erb :dashboard
end

get '/appboard' do
    erb :appboard
end

get '/app' do
    erb :app
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
