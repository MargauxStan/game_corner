class Account::BookingsController < ApplicationController
  def index
    @my_bookings =  policy_scope(Booking).where(user: current_user)
    @my_locations = policy_scope(Booking).where(game: current_user.games)
  end

  def accepted
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "accepted"
    if @booking.save
      redirect_to account_bookings_path
    end
  end

  def declined
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "declined"
    if @booking.save
      redirect_to account_bookings_path
    end
  end
end
