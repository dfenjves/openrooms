require './config/environment'
require './app/models/viewroom'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/viewroom' do
    erb :viewroom
  end

  post '/viewroom' do
    @free = ViewRoom.new()
    erb :viewroom
  end

end
