class BookingsController < ApplicationController
  def new
    @job = Job.find(params[:job_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @job = Job.find(params[:job_id])
    @booking.job = @job
    @booking.user = current_user
    if @booking.save
      redirect_to job_booking_path(@job, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:job_id, :date, :message)
  end
end
