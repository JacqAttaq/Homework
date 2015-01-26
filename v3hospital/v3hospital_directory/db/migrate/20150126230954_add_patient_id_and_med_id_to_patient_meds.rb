class AddPatientIdAndMedIdToPatientMeds < ActiveRecord::Migration
  def change
    add_column :patient_meds, :patient_id, :integer
    add_column :patient_meds, :med_id, :integer
  end
end
