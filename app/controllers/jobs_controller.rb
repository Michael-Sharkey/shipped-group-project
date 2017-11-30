class JobsController < ApplicationController
  before_action :authenticate_user!
  def index
    # see all the jobs
  end

  def show
    @job = Job.find_by(params[:id])
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

  private
  def job_params
    params.require(:job).permit(:name, :description, :cost, :capacity, :origin, :destination, :capacity, boat_ids:[])
  end
end
