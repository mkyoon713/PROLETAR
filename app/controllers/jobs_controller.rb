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
    # @job.rating = Booking.find(params)
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
