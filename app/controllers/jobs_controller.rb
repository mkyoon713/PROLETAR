class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def ratings
    @ratings = 0
    jobs = Job.all
    job.bookings.each do |booking|
      @ratings += booking.rating
    end
    return @ratings
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
