require 'yaml'
require 'sequel'

module Database

  def self.init
    Sequel::Model.db = database
  end

  def self.database
    Sequel.connect database_config
  end

  def self.database_config
    database_config = nil

    begin
      database_config = YAML::load_file(File.join(__dir__, 'config.yml'))
    rescue
      database_config = {}
    end

    database_config
  end

end
