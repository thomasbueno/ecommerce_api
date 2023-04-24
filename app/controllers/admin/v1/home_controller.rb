module Admin
  module V1
    class HomeController < ApiController
      def index
        render json: { message: 'Logged ;)' }
      end
    end
  end
end
