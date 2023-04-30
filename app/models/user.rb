class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :transactions, foreign_key: 'user_id', dependent: :destroy
  attribute :balance, :decimal, default: 200
  attribute :user_id, :string, default: SecureRandom.hex(3)
  validates :balance, presence: true, numericality: { allow_decimal: true, greater_than: 0 }
  validates :firstname, :lastname, :username, :password, :phone_number, presence: true
  validates :username, uniqueness: true
  validates :password, length: { maximum: 20 },
                       format: { with: /\A(?=.*[a-zA-Z])(?=.*\d).+\z/,
                                 message: 'must contain at least one letter and one number' }
end
