class BoatsController < ApplicationController
  before_action :authenticate_user!
  def index
    # see all the boats
  end

  def show
    # see just one boat
  end

  def new

  end

  def create

  end

  private
  def boat_params

  end

end
