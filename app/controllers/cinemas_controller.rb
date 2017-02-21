class CinemasController < ApplicationController
  include CinemasHelper
  skip_before_filter  :verify_authenticity_token
  def index
    @cinemas = Cinema.all
  end

  def new
  end

  def edit
    @movies = Movie.all
    @cinema = Cinema.find(params[:id])
  end

  def update
    @cinema = Cinema.find(params[:id])
    @movie = Movie.find_by(title: params[:cinema][:movie])
    seat_cap = params[:cinema][:seating_capacity]
    if !(seat_cap == seat_cap.to_i.to_s)
      @cinema.errors.messages[:seating_capacity] = ["must be a number!"]
    elsif params[:cinema][:seating_capacity] != ""
      @cinema.update_attributes(seating_capacity: seat_cap)
      @cinema.save
      resetSeats(@cinema)
    end
    @showing = Showing.where({cinema_id: @cinema.id})
    @showing.each do |show|
      show.movie = @movie
      show.save
    end
    redirect_to "/"
  end
end
