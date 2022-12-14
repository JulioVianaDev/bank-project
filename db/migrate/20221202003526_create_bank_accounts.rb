class CreateBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accounts do |t|
      t.references :client, null: false, foreign_key: true
      t.decimal :balance
      t.string :account_name

      t.timestamps
    end
  end
end
