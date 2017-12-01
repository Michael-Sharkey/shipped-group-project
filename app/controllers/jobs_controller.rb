class JobsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
    @job = Job.find_by_id(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
      if @job.save
        redirect_to root_path
      else
        render 'new'
      end
    end

  def edit
    @job = Job.find_by_id(params[:id])
  end

  def update
    @job = Job.find_by_id(params[:id])
      if @job.update(job_params)
        redirect_to root_path, notice: 'Job updated'
      else
        render 'edit'
      end
  end

  private
  def job_params
    params.require(:job).permit(:name, :description, :cost, :capacity, :origin, :destination, :capacity, boat_ids:[])
  end

end
