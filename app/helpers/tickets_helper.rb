module TicketsHelper
  def ticket_valid?(seat, showing)
    if Reservation.find_by(seat_id: seat, showing_id: showing)
      false
    else
      true
    end
  end
end
