class PatientsController < ApplicationController
  
  def index
    @facility = Facility.find params[:facility_id]
    @patients = Patient.all
  end

  def new
    @facility = Facility.find params[:facility_id]
    @patient = @facility.patients.new
  end

  def create 
    @facility = Facility.find params[:facility_id]
    @patient = @facility.patients.create pat_params
     if @patient.save
      flash[:notice] = 'Record Created'
      redirect_to facility_patients_path
    else
      flash[:error] = 'No Record Created'
      render :new
    end
  end

  def edit
    @patients = Patient.find params[:id]
  end

  def update
    @patient.update_attributes pat_params
    redirect_to patients_path 
  end

  def show
    @facility = Facility.find parmas[:facility_id]
    @patient = Patient.find params[:id]
  end

  def destroy
    @facility = Facility.find params[:facility_id]
    @patient = Patient.find params[:id]
    @patient.destroy
    redirect_to facility_patients_path
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