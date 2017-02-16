require 'rails_helper'

describe Showing do
  movie = Movie.create(title: "John Wick: Chapter 2", runtime: 122, imdb_link: "http://www.imdb.com/title/tt4425200/", rotten_tomatoes_link: "https://www.rottentomatoes.com/m/john_wick_chapter_2/")
  cinema = Cinema.create(seating_capacity: 30)
  time = Time.now
  showing = Showing.create(movie: movie, cinema: cinema, start_time: time, end_time: movie.calc_end_time(time))
  cinema.seating_capacity.times { Seat.create(cinema: cinema)

  describe 'showing' do
    context 'has a showing start_time' do
      it { expect(showing.start_time).to eq time }
    end

    context 'has a showing end_time' do
      it { expect(showing.end_time).to eq calc_end_time(time, movie.runtime) }
    end

    context 'has movie association' do
      it { expect(showing.movie).to eq movie }
    end

    context 'has cinema association' do
      it { expect(showing.cinema).to eq cinema  }
    end
  end
end
