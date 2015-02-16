class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create loc_params
    redirect_to locations_path
  end

  def edit
    @location = Location.find params[:id]
  end

  def update
    @location.update(loc_params)
    redirect_to locations_path
  end

  def show
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end
  
  private

  def loc_params
    params.require(:location).permit(
      :name,
      :city,
      :state
      )
  end

  def set_location
    @location = Location.find(params[:id])
  end  
end
