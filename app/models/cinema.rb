class Cinema < ApplicationRecord
  has_many :showings
  has_many :movies, through: :showings
  has_many :seats
  validates_numericality_of :seating_capacity
end
