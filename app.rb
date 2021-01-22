require 'sinatra/base'
require './lib/date_of_birth.rb'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/save_the_date' do
    @name = params[:name]
    day = params[:day]
    month = params[:month]
    @result = DateOfBirth.new(day, month).birthday_checker
    erb(:save_the_date)
  end

  !run if app_file == $0

end
