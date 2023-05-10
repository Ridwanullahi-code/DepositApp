class Transaction < ApplicationRecord
  belongs_to :user
  validates :transaction_type, :amount, presence: true
  validates :transaction_type, inclusion: { in: %w[deposit withdraw] }
  validates :amount, numericality: { greater_than: 0 }

  after_save :handle_transaction

  private

  def handle_transaction
    case transaction_type
    when 'deposit'
      user.update!(balance: user.balance + amount) if user.unique_id == unique_id
    when 'withdraw'
      user.update!(balance: user.balance - amount) if user.unique_id == unique_id && user.balance >= 300
    end
  end
end
