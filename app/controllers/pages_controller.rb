class PagesController < ApplicationController
  def home
  end

  def dashboard
    # user's jobs
    @own_jobs = current_user.owned_jobs
  end

  def dashboardbookings
    # user's bookings
    @bookings = current_user.bookings
  end
end
