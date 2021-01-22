require 'sinatra/base'
require './lib/birthday.rb'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/save_the_date' do
    @name = params[:name]
    @day = params[:day]
    @month = parmas[:month]
    Birthday.new(@day, @month)
    erb(:save_the_date)
  end

  !run if app_file == $0

end
