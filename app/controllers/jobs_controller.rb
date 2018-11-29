class JobsController < ApplicationController
  def index
    if params[:location]
      @jobs = Job.where('location ILIKE ?', "%#{params[:location]}%")
    else
      @jobs = Job.all
    end
  end

  def ratings
    @ratings = 0
    job = Job.all
    job.bookings.each do |booking|
      @ratings += booking.rating
    end
    return @ratings
  end

  def show
    # @job.rating = Booking.find(params)
    @job = Job.find(params[:id])
    @booking = Booking.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    if @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :location, :price, :photo, :user_id, :category_id)
  end
end
