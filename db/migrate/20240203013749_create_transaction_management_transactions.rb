class CreateTransactionManagementTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_management_transactions do |t|
      t.string :transaction_id, null: false
      t.decimal :amount
      t.string :account_id, null: false

      t.timestamps
    end
    add_index :transaction_management_transactions, :transaction_id, unique: true
    add_foreign_key :transaction_management_transactions, :transaction_management_accounts, column: :account_id, primary_key: :account_id
  end
end
