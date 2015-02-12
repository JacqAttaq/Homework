class LocationsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :update]

  def index
  @location = Location.all
  end

  def new
  @location = Location.new
  end

  def create
  end

  def destroy
  end

private

  def loc_params
    parmas.require(:location).permit (
      :name,
      :city
      )
  end

end
