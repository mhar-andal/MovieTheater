class Seat < ApplicationRecord
  has_many :reservations
  belongs_to :cinema
end
