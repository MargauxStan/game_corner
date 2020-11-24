class Account::BookingsController < ApplicationController
  def index
    @bookings =  policy_scope(Booking).where(user: current_user)
  end

  def accepted
  end

  def declined
  end
end
