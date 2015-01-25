class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end

  def new
    @facility = Facility.find params[:facility_id]
    @patient = @facility.patients.new
  end

  def create 
    @facility = Facility.find params [:facility_id]
    @patient = @facility.patients.create patient params
     if @patient.save
      flash[:notice] = 'Record Created'
      redirect_to patients_path
    else
      flash[:error] = 'No Record Created'
      render :new
    end
    redirect_to facility_path(@facility)
  end

  def edit
    @patients = Patient.find params[:id]
  end

  def update
    @patient.update_attributes pat_params
    redirect_to patients_path 
  end

  def destroy
    @patient = Patient.find params [:id]
    @patient.delete
    redirect_to patients_path
  end

private


  def pat_params
    params.require(:patient).permit(
    :first_name, 
    :last_name,
    :d_o_b,
    :description,
    :gender,
    :blood_type,
    )
  end
end