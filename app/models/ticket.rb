class Ticket < ApplicationRecord
  has_one :reservation
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :credit_card, presence: true
  validates :credit_card, format: { with: /^4[0-9]{12}(?:[0-9]{3})?$/, message: "must be a valid credit card" }
  validates :credit_card, format: { with: /^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$/, message: "must be a valid credit card" }
  validates :credit_card, format: { with: /^3[47][0-9]{13}$/, message: "must be a valid credit card" }
  validates :credit_card, format: { with: /^6(?:011|5[0-9]{2})[0-9]{12}$/, message: "must be a valid credit card" }

  validates :expiration_date, presence: true
end
