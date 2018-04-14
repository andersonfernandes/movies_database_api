require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/namespace'
require './db/database'

class MoviesDatabase < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
    register Sinatra::Namespace

    ::Database.init
  end

  before do
    content_type 'application/json'
  end

  get '/' do
    'WELCOME TO THE MOVIES DATABASE'
  end

end
