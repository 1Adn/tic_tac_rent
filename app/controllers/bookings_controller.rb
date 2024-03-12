class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :accept, :decline]

  def index
    @bookings = Booking.all
  end

  def show
    # @booking est déjà défini grâce à set_booking
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
    # @booking est déjà défini grâce à set_booking
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  def accept
    @booking.update(status: 'Accepted')
    redirect_to bookings_url, notice: 'Booking was accepted.'
  end

  def decline
    @booking.update(status: 'Declined')
    redirect_to bookings_url, notice: 'Booking was declined.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :status, :user_id, :watch_id)
  end
end
