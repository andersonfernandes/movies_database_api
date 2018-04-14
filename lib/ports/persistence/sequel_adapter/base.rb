require 'sequel'

module SequelAdapter
  module Base

    def self.init config
      db = Sequel.connect config
      Sequel::Model.db = db
      Sequel::Model.plugin :json_serializer

      db
    end    

  end
end
