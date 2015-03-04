class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
    @courses = Course.all
  end

  def create
    @location = Location.create loc_params
    @courses = Course.all
    redirect_to locations_path
  end

  def edit
    @location = Location.find params[:id]
    @courses = Course.all
  end

  def update
    @location.update(loc_params)
    @courses = Course.all
    redirect_to locations_path
  end

  def show
    @courses = Course.all
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
      :state,
      course_ids: [],
      location_ids: []
      )
  end

  def set_location
    @location = Location.find(params[:id])
  end  

end
