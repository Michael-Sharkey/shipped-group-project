class JobsController < ApplicationController
  before_action :authenticate_user!
  def index
    # see all the jobs
  end

  def show
    # see just one job
  end

  def new

  end

  def create

  end

  private
  def job_params

  end
end
