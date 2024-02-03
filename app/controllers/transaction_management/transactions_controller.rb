module TransactionManagement
  class TransactionsController < ApplicationController
    before_action :set_transaction, only: [:show]

    def index
      @transactions = Transaction.all
      json_response(@transactions)
    end

    def show
      json_response(@transaction)
    end

    def create
      @transaction = Transaction.new(transaction_params)
      @transaction.account_id = @transaction.create_account.id
    
      if @transaction.save
        @transaction.update_balance
        json_response(@transaction, :created)
      else
        json_response({ error: 'Failed to save transaction', details: @transaction.errors }, :unprocessable_entity)
      end
    end

    private

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:account_id, :amount)
    end
  end
end
