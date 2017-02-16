class Ticket < ApplicationRecord
  has_one :reservation
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :credit_card, presence: true
  validates :expiration_date, presence: true
end
