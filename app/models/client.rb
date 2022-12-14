class Client < ApplicationRecord
  validates :first_name,presence: true
  validates :middle_name,presence: true
  validates :last_name,presence: true
  validates :client_number, presence: true,uniqueness: true
  has_many :bank_accounts
  before_save :format_name

  def format_name
    self.first_name = self.first_name.upcase
    self.last_name = self.last_name.upcase
    self.middle_name = self.middle_name.upcase
  end

  def to_s
    "#{first_name} #{middle_name} #{last_name}    "
  end
end