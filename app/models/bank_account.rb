class BankAccount < ApplicationRecord
  before_validation :load_defaults
  belongs_to :client
  validates :client, presence: true
  validates :account_number ,presence: true, uniqueness: true
  validates :balance, presence: true,numericality: true


  def load_defaults
    if self.new_record?
      self.balance = 0.00
    end
  end

  def to_s
    account_number
  end
end
