require './config/environment'
require './app/models/viewroom'
require './app/models/current_schedule'
require 'pry'
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

  get '/roomsnow' do
    current_schedule = CurrentSchedule.new
    @free = ViewRoom.new(current_schedule.week, current_schedule.day, current_schedule.period)
    erb :viewroom
  end

  # post '/viewroom' do
  #   current_schedule = CurrentSchedule.new
  #   @free = ViewRoom.new(current_schedule.week, current_schedule.day, current_schedule.period)
  #   erb :viewroom
  # end

end
