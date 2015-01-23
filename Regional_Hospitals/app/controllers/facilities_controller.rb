class FacilitiesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end




private
  def fac_params 
    params.require (:facility).permit(
      :name,
      :address,
      :zip,
    )
  end


end
