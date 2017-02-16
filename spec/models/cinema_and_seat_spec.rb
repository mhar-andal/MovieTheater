require 'rails_helper'

describe Cinema do
  before :each do
    cinema = Cinema.create(seating_capacity: 30)
    cinema.seating_capacity.times { Seat.create(cinema: cinema) }
  end

  describe 'cinema' do
    context 'has a seating capacity' do
      it { expect(cinema.capacity).to eq 30 }
    end

    context 'can make multiple seats' do
      it { expect(cinema.seats.count).to eq 30  }
    end

  end
end
