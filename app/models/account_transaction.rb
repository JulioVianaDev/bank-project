class AccountTransaction < ApplicationRecord
  belongs_to :bank_account
  TRANSACTION_TYPES = ["withdraw","deposit"]
  validates :bank_account,presence: true
  validates :amounts,presence: true,numericality: true
  validates :transaction_type,presence: true, inclusion: { in: TRANSACTION_TYPES}
  validates :transaction_number,presence: true, uniqueness: true
  
  before_validation :load_defaults
  def load_defaults
    if self.new_record?
      self.transaction_number = SecureRandom.uuid
    end
  end
end
