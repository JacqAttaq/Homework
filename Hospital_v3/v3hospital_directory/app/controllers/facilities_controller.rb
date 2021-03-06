class FacilitiesController < ApplicationController
  before_action :set_facility, only: [:show, :edit, :update, :destroy]

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

  def create_doctor
    @facility = Facility.find params[:id]
    @doctor = @facility.doctors.create doctor_params
    redirect_to facility_path(@facility)
  end
  
  def edit
    @facility = Facility.find params[:id]
  end

  def update
    @facility.update(fac_params)
    redirect_to @facility
  end

  def destroy
    @facility.destroy
    redirect_to facilities_path
  end

  def show
    @facility = Facility.find params[:id]
    @patients = @facility.patients
    @doctor = Doctor.new
    @doctors = @facility.doctors
  end


  private

  def doctor_params
    params.require(:doctor).permit(
      :name,
      :specialty
    )
  end
  
  def set_facility
    @facility = Facility.find(params[:id])
  end
  
  def fac_params 
    params.require(:facility).permit(
      :name,
      :address,
      :zip,
    )
  end

end

