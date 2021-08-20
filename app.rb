require 'sinatra/base'
require 'sinatra/reloader'
# require './lib/diary.rb'

class Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:'diary/index')
  end

end