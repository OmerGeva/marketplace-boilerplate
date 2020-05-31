class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    Date.beginning_of_week = :sunday
  end
  def create
    booking = Booking.new(booking_params)
    haircut = Haircut.find_by(title: params[:booking][:haircut])
    booking.haircut = haircut

    Booking.all.select do |checked_booking|
      checked_booking.date == booking.date
    end

    if booking.save
      redirect_to root_path
    else
      render 'haircuts/index'
    end
  end

  def contact
    @user = User.first
  end


  private
  def booking_params
    params.require(:booking).permit(:client_name, :client_email, :phone_number, :message,:date, :time)
  end
end
