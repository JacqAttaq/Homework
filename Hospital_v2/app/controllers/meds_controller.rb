class MedsController < ApplicationController
  def index
  end

  def new
    @facility = Facility.find params[:facility_id]
    @patient = Patient.find params[:patient_id]
  end

  def create
  end
end
