class Reservation < ApplicationRecord
  belongs_to :ticket
  belongs_to :seat
  belongs_to :showing
end
