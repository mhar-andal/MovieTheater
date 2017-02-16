class Showing < ApplicationRecord
  belongs_to :movie
  belongs_to :cinema
  has_many :reservations
end
