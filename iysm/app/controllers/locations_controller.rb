class LocationsController < ApplicationController

  def index
    @location = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create loc_params
    redirect_to root_path
  end

  def edit
  end

  def show
  end

  def destroy
  end
  
  private

  def loc_params
    parmas.require(:location).permit(
      :name,
      :city,
      :state
      )
  end
end
