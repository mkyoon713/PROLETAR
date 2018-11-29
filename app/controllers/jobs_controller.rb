class JobsController < ApplicationController
  def index
    @jobs = policy_scope(Job).order(created_at: :desc)
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
    authorize @job
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:id])
    authorize @job
    # before you save
  end

  # goes into controllers corresponding policy
  # looks at the method its called in
  # Then it checks the corresponding action name within the corresponding policy
  # if true or false

  def edit
    authorize @job
  end

  def update
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    authorize @job

    flash.notice = "'#{@job.name}' was deleted"

    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :location, :price, :photo, :user_id, :category_id)
  end
end
