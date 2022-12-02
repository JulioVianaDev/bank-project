class ChangeNameColumnBankAccount < ActiveRecord::Migration[7.0]
  def change
    change_table :bank_accounts do |t|
      t.rename :account_name, :account_number
    end
  end
end
