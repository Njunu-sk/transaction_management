module TransactionManagement
  class HomeController < ActionController::API
    def index
      render json: { message: "Hello Engine" }
    end
  end
end
