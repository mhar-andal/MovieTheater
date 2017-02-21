class NewTicketEmailMailer < ApplicationMailer
  def notify_user(ticket, reservation)
    @ticket = ticket
    @reservation = reservation
    mail(to: @ticket.email, subject: "Movie Theater Tickets")
  end
end
