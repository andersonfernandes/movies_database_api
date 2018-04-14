module Api
  module V1
    module Authentication

      def self.registered app
        app.post '/authenticate' do
          param :email, String, required: true
          param :password, String, required: true

          #TODO AUTHENTICATE USECASE
        end
      end

    end
  end
end
