class BookingsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.game_id = params[:game_id]
    @booking.user = current_user

    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
