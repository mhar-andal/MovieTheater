class Movie < ApplicationRecord
  has_many :showings
  has_many :cinemas, through: :showings

  def calc_end_time(time)
    time + self.runtime.minutes
  end
end
