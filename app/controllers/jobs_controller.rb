class JobsController < ApplicationController
  def index
    @jobs = policy_scope(Job).order(created_at: :desc)
    if params[:query].present? && params[:location].present?
      location = params[:location]
      name = params[:query]
      @jobs = Job.where("location @@ ? and name @@ ?", location, name)
    else
      params[:category_id].present?
      @jobs = Job.where(category_id: params[:category_id])
    # else
    #   @jobs = Job.all
    end
  end

  def show
    # @job.rating = Booking.find(params)
    @job = Job.find(params[:id])
    @booking = Booking.new
    authorize @job
  end

  def new
    @job = Job.new
    authorize @job
  end

  def create
    @job = Job.new(job_params)
    authorize @job
    @job.user = current_user
    if @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  # goes into controllers corresponding policy
  # looks at the method its called in
  # Then it checks the corresponding action name within the corresponding policy
  # if true or false

  def edit
    @job = Job.find(params[:id])
    authorize @job
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    authorize @job

    flash.notice = "'#{@job.name}' was updated"

    redirect_to jobs_path
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
