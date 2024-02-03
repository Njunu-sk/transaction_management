module TransactionManagement
  class Transaction < ApplicationRecord
    self.primary_key = "transaction_id"
    belongs_to :account, foreign_key: "account_id"
    before_create :set_uuid
    
    def set_uuid
      self.transaction_id = SecureRandom.uuid if self.transaction_id.blank?
    end

    validates :account_id, presence: true
    validates :amount, presence: true

    def update_balance
      account = self.account
      new_balance = account.balance + amount
      account.update!(balance: new_balance)
      new_balance
    end

    def create_account
      account = Account.find_or_create_by(account_id: self.account_id) do |acc|
        acc.balance = 0
      end

      account
    end
  end
end
