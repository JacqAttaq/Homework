class PatientsController < ApplicationController
  before_action :set_patient, only: [
    :show,
    :edit,
    :update,
    :destroy,
    :wait_patient,
    :check_patient,
    :xray_patient,
    :surgery_patient,
    :pay_patient,
    :leave_patient,
    :deactivate_patient
  ]
  def index
    @facility = Facility.find params[:facility_id]
    @patients = Patient.all
  end

  def new
    @facility = Facility.find params[:facility_id]
    @patient = @facility.patients.new
    @meds = Med.all
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
    @facility = Facility.find params[:facility_id]
    @meds = Med.all
  end

  def update
    @patient.update_attributes pat_params
    redirect_to facility_patients_path 
  end

  def show
    @patients = Patient.all
    @facility = Facility.find params[:facility_id]
    @patient = Patient.find params[:id]
    @meds = @patient.meds
    @doctor = Doctor.new
    @doctors = @facility.doctors
  end

  def create_doctor
    @patient = Patient.find params[:id]
    @doctor = @facility.doctors.create doctor_params
    redirect_to facility_path(@facility)
  end

  def destroy
    @facility = Facility.find params[:facility_id]
    @patient = Patient.find params[:id]
    @patient.delete
    redirect_to facility_patients_path
  end

  def deactivate_patient 
    @patient.deactivate!
    redirect_to facility_patients_path
  end 

  def wait_patient
    @patient.wait!
    redirect_to facility_patients_path
  end

  def check_patient
    @patient.check!
    redirect_to facility_patients_path
  end

  def xray_patient
    @patient.xray!
    redirect_to facility_patients_path
  end

  def surgery_patient
    @patient.surgery!
    redirect_to facility_patients_path
  end

  def pay_patient
    @patient.pay!
    redirect_to facility_patients_path
  end

  def leave_patient
    @patient.leave!
    redirect_to facility_patients_path
  end

private

  def set_patient
    @patient = Patient.find params[:id]
  end
  def doctor_params
    params.require(:doctor).permit(
      :name,
      :specialty
      )
  end

  def find_patient
    @patient = Patient.find params[:id]
  end 

  def pat_params
    params.require(:patient).permit(
    :first_name, 
    :last_name,
    :d_o_b,
    :description,
    :gender,
    :blood_type,
    med_ids: [],
    patient_ids: []
    )
  end
end