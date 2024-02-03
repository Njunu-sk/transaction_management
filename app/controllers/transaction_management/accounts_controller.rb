module TransactionManagement
  class AccountsController < ApplicationController
    before_action :set_account, only: %i[show]

    def show
      json_response(@account)
    end

    private

    def set_account
      @account = Account.find(params[:id])
    end
  end
end
