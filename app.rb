require 'sinatra/base'
require 'sinatra/reloader'
require './lib/diary.rb'

class Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @diary = Diary.all
    erb(:'diary/index')
  end

  run! if app_file == $0
end