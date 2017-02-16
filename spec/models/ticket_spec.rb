require 'rails_helper'

describe Ticket do
  let(:ticket) { Ticket.create(first_name: 'Mhar', last_name: 'Andal', email: 'info@mharandal.com', credit_card: '1234123412341234', expiration_date: '2/18') }

  describe 'ticket' do
    context 'has a first name'
      it { expect(ticket.first_name).to eq 'Mhar' }
    end

    context 'has a showing end_time' do
      it { expect(ticket.last_name).to eq 'Andal' }
    end

    context 'has an email' do
      it { expect(ticket.email).to eq 'info@mharandal.com' }
    end

    context 'has a credit_card' do
      it { expect(ticket.credit_card).to eq '1234123412341234' }
    end

    context 'has expiration_date' do
      it { expect(ticket.expiration_date).to eq '2/18' }
    end
  end

  describe 'ticket gives' do
    let(:invalid_ticket) { Ticket.create() }

    context 'error for no first name' do
      it { expect(ticket.errors.full_messages).to include "First name can't be blank"}
    end

    context 'error for no last name' do
      it { expect(ticket.errors.full_messages).to include "Last name can't be blank"}
    end

    context 'error for no email' do
      it { expect(ticket.errors.full_messages).to include "Email can't be blank"}
    end

    context 'error for no credit card' do
      it { expect(ticket.errors.full_messages).to include "Credit card can't be blank"}
    end

    context 'error for no exp' do
      it { expect(ticket.errors.full_messages).to include "Expiration date can't be blank"}
    end
  end

end
