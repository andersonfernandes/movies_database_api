require 'sinatra/base'
require "sinatra/reloader"

class MoviesDatabase < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'WELCOME TO THE MOVIES DATABASE'
  end

end
