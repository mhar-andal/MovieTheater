class ShowingsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
  end

  def new
    @showing = Showing.new
    @movies = Movie.all
    @cinemas = Cinema.all.order("id ASC")
  end

  def create
    @movie = Movie.find_by(title: params[:showing][:movie])
    @cinema = Cinema.find(params[:showing][:cinema])
    @showing = Showing.new(movie: @movie, cinema: @cinema, start_time: params[:showing][:start_time])
    @showing.update_attributes(end_time: (Time.now + @movie.runtime.minutes))
    @showing.save
    redirect_to "/"
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
