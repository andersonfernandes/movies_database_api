require './db/database'
require_all 'app/api/'
require_all 'lib/ports/persistence/sequel_adapter/'

class MoviesDatabase < Sinatra::Base

  register Sinatra::Namespace

  configure :development do
    register Sinatra::Reloader
  end

  helpers Sinatra::Param

  before do
    content_type :json
  end

  set :root, File.dirname(__FILE__)

  namespace '/v1' do
    register Api::V1::Root
  end

end
