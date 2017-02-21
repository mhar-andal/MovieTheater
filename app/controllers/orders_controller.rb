class OrdersController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @reservations = Reservation.all
    @orders = []
    @reservations.each do |reservation|
      if reservation.showing.movie.id == @movie.id
        @orders << reservation
      end
    end
  end

  def all
    @orders = Reservation.all
  end

end
