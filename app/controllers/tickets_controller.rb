class TicketsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save

    else
      render action: 'new'
    end
  end

  private
  def ticket_params
    params.require(:ticket).permit(:first_name, :last_name, :email, :credit_card, :expiration_date)
  end
end
