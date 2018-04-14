module Api
  module V1
    module Root

      def self.registered app
        app.register Authentication
      end

    end
  end
end
