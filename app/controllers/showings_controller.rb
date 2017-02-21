class ShowingsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @showing = Showing.find(params[:id])
    @seats = @showing.cinema.seats
    @reservations = @showing.reservations
    @seats_taken = []
    @reservations.each do |res|
      @seats_taken << res.seat
    end
  end
end
