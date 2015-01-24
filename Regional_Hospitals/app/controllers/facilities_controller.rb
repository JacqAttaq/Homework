class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
  end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.create fac_params
    redirect_to facilities_path
  end

  def edit
    @facility = Facility.find params[:id]
  end

  def destroy
     @facility = Facility.find params[:id]
    @facility.delete
    redirect_to facilities_path
  end



private
  def fac_params 
    params.require(:facility).permit(
      :name,
      :address,
      :zip,
    )
  end


end
