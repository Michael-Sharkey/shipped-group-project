class BoatsController < ApplicationController
  before_action :authenticate_user!
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find_by_id(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id = current_user.id
    if @boat.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :containers, :location, :avatar)
  end

end
