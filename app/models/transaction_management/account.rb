module TransactionManagement
  class Account < ApplicationRecord
    self.primary_key = "account_id"
    before_create :set_uuid
    
    def set_uuid
      self.account_id = SecureRandom.uuid if self.account_id.blank?
    end

    validates :balance, presence: true
  end
end
