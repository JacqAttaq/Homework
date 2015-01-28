class MedsController < ApplicationController
  def index
    @meds = Med.all
  end

  def new
    @meds = Med.new 
    @patients = Patient.all
  end

  def create
    @meds = Med.create med_params
    @patients = Patient.all
    redirect_to meds_path
  end

  def edit
    @meds = Med.find params[:id]
  end

  def update
    @med = Med.find params[:id]
    @med.update(med_params)
    redirect_to meds_path
  end

private 
  def med_params
    params.require(:med).permit(
  :name,
  :dose,
  :description,
  patient_ids: []
  )
end

end