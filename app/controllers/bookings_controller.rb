class BookingsController < ApplicationController
  def new
    @job = Job.find(params[:job_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @job = Job.find(params[:job_id])
    @booking.job = @job
    @booking.user = current_user
    if @booking.save
      redirect_to confirm_path(@job, @booking)
    else
      render :new
    end
  end

  def show
    job = Job.find(params[:job_id])
    @bookings = job.bookings
    authorize @bookings
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    authorize @booking
    redirect_to dashboard_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to dashboard_bookings_path
  end

  def confirm
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:job_id, :date, :message)
  end
end
