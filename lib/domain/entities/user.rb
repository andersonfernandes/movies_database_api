module Domain
  module Entities
    class User < Base
      
      attr_accessor :name, :email, :password, :token

    end
  end  
end
