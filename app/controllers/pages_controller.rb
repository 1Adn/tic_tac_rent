class PagesController < ApplicationController
  skip_before_action only: :home

  def home
  end

  def dashboard
    @current_user_bookings = current_user.bookings
    @current_user_watches = current_user.watches
    # @clients_bookings = Booking.find(:watch_id)
    # @current_user_rented_watches =
  end
end
