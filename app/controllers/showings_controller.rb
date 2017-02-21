class ShowingsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @showing = Showing.find(params[:id])
    @seats = @showing.cinema.seats
  end
end
