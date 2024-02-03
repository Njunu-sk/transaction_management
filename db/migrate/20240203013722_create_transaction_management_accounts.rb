class CreateTransactionManagementAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_management_accounts do |t|
      t.string :account_id, null: false
      t.decimal :balance, null: false, default: 0.0

      t.timestamps
    end
    add_index :transaction_management_accounts, :account_id, unique: true
  end
end
