module CinemasHelper
  def resetSeats(cinema)
    @cinema = cinema
    @cinema.seats.destroy_all
    Showing.find_by(cinema_id: @cinema.id).reservations.destroy_all
    letters = ["A", "B", "C", "D", "E", "F", "G"]
    for i in (0...cinema.seating_capacity)
      Seat.create(cinema: @cinema, seat_identifier: "#{letters[i/10]}#{(i%10) + 1}")
    end
  end

  def createSeats(cinema)
    @cinema = cinema
    letters = ["A", "B", "C", "D", "E", "F", "G"]
    for i in (0...cinema.seating_capacity)
      Seat.create(cinema: @cinema, seat_identifier: "#{letters[i/10]}#{(i%10) + 1}")
    end
  end

  def any_showings?(cinema)
    cinema.showings == [] ? false : true
  end
end
