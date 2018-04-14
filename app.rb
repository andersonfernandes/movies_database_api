require './db/database'
require_all 'lib/ports/persistence/sequel_adapter/'

class MoviesDatabase < Sinatra::Base

  register Sinatra::Namespace

  configure :development do
    register Sinatra::Reloader
  end

  before do
    content_type :json
  end

  get '/' do
    'WELCOME TO THE MOVIES DATABASE'
  end

end
