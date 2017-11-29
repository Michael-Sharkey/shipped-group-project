class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @boats = Boat.all
    @jobs = Job.all
  end

  def locations
  end
end
