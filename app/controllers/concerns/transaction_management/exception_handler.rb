module TransactionManagement::ExceptionHandler
  extend ActiveSupport::Concern

  class InvalidRequest < StandardError; end

  included do
    rescue_from ActiveRecord::RecordInvalid, with: :four_twenty_two
    rescue_from TransactionManagement::ExceptionHandler::InvalidRequest, with: :four_twenty_two

    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end
  end

  private

  def four_twenty_two(e)
    json_response({ message: e.message }, :unprocessable_entity)
  end
end
