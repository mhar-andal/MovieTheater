require 'rails_helper'

describe Showing do

  movie = Movie.create(title: "John Wick: Chapter 2", runtime: 122, imdb_link: "http://www.imdb.com/title/tt4425200/", rotten_tomatoes_link: "https://www.rottentomatoes.com/m/john_wick_chapter_2/")
  cinema = Cinema.create(seating_capacity: 30)
  ticket = Ticket.create(first_name: 'Mhar', last_name: 'Andal', email: 'info@mharandal.com', credit_card: '1234123412341234', expiration_date: '2/18')
  time = Time.now
  cinema.seating_capacity.times { Seat.create(cinema: cinema)
  showing = Showing.create(movie: movie, cinema: cinema, start_time: time, end_time: calc_end_time(time, movie.runtime))
  reservation = Reservation.create(ticket: ticket, seat: seat, showing: showing) 


  describe 'reservation' do
    context 'has a ticket' do
      it { expect(reservation.ticket).to eq ticket }
    end

    context 'has a seat' do
      it { expect(reservation.seat).to eq seat }
    end

    context 'has a showing' do
      it { expect(reservation.showing).to eq showing }
    end
  end
end
