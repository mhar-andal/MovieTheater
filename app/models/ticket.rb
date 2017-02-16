class Ticket < ApplicationRecord
  has_one :reservation
  validates :full_name, presence: true
end
