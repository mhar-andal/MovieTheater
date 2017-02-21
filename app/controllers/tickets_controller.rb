class TicketsController < ApplicationController
  include TicketsHelper
  skip_before_filter  :verify_authenticity_token
  def new
    @ticket = Ticket.new
  end

  def purchase
  end

  def create
    @ticket = Ticket.new
    if ticket_valid?(params[:seat_id], params[:showing_id])
      @ticket = Ticket.new(ticket_params)
      if @ticket.save
        @reservation = Reservation.create(ticket: @ticket, seat: Seat.find(params[:seat_id]), showing: Showing.find(params[:showing_id]))
        NewTicketEmailMailer.notify_user(@ticket, @reservation).deliver
        render action: 'purchase'
      else
        render action: 'new'
      end
    else
      p @ticket.errors.messages[:seat] = ["has already been taken"]
      render action: 'new'
    end
  end

  private
  def ticket_params
    params.require(:ticket).permit(:first_name, :last_name, :email, :credit_card, :expiration_date)
  end
end
