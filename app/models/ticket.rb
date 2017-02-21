class Ticket < ApplicationRecord
  has_one :reservation
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :credit_card, presence: true,
  format: { with: /\A(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})\z/,
  message: "must be a valid" }
  validates :expiration_date, presence: true, format: { with: /\A(0[1-9]|1[0-2])\/?([0-9]{4}|[0-9]{2})\z/, message: "must be valid" }
  validate :expiration_date_valid, on: :create

  def expiration_date_valid
    p Date.strptime("{ #{expiration_date[0..1]}, 20#{expiration_date[3..4]} }", "{ %m, %Y }") > Time.now
    errors.add(:expiration_date, "has expired") unless Date.strptime("{ #{expiration_date[0..1]}, 20#{expiration_date[3..4]} }", "{ %m, %Y }") > Time.now
  end
end
