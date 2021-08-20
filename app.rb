require 'sinatra/base'
require 'sinatra/reloader'
require './lib/Diary.rb'

class Manager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

end