class ShipmentsController < ApplicationController

  def index
    # see all the shipments
  end

  def show
    # see just one shipment
  end

  def new
    @shipment = Shipment.new
  end

  def create
    @shipment = Shipment.new(shipment_params)
    @shipment.user_id = current_user.id

      if @shipment.save
        redirect_to root_path
      else
        render 'new'
      end
    end

  private
  def shipment_params
    params.require(:job).permit( :origin, :destination, :delivery)
  end
  end
