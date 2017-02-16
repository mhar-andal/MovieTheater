require 'rails_helper'

describe Showing do
  let(:movie) { Movie.create(title: "John Wick: Chapter 2", runtime: 122, imdb_link: "http://www.imdb.com/title/tt4425200/", rotten_tomatoes_link: "https://www.rottentomatoes.com/m/john_wick_chapter_2/") }
  let(:cinema) { Cinema.create(seating_capacity: 30) }
  let(:ticket) { Ticket.create(first_name: 'Mhar', last_name: 'Andal', email: 'info@mharandal.com', credit_card: '1234123412341234', expiration_date: '2/18') }
  time = Time.now
  cinema.seating_capacity.times { Seat.create(cinema: cinema) }
  let(:showing) { Showing.create(movie: movie, cinema: cinema, start_time: time, end_time: calc_end_time(time, movie.runtime)) }
  let(:reservation) { Reservation.create(ticket: ticket, seat: seat, showing: showing) }

  describe 'movie' do
    context 'has cinemas' do
      it { expect(movie.cinemas).to match_array [cinema] }
    end
  end

  describe 'cinema' do
    context 'has showings' do
      it { expect(cinema.showings).to match_array [showing] }
    end
  end

  describe 'showing' do
    context 'has reservations' do
      it { expect(showing.reservations).to match_array [reservation] }
    end
  end
end
