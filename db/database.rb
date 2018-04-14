require 'yaml'
require './lib/ports/persistence/sequel_adapter/base'

module Database

  def self.init
    @database ||= SequelAdapter::Base.init database_config
  end

  def self.database
    init 

    @database
  end

  def self.database_config
    database_config = nil

    begin
      database_config = YAML::load(ERB.new(File.read('db/config.yml')).result)
    rescue
      database_config = {}
    end

    database_config
  end

end
