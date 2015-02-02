class Patient < ActiveRecord::Base

has_many :patient_meds
has_many :meds, through: :patient_meds
has_many :doctors, as: :doctorable

B_T_OPTIONS = [
  "A-",
  "A+",
  "B-",
  "B+",
  "AB-",
  "AB+",
  "O-",
  "O+"
]


validates :first_name, presence:true
validates :last_name, presence:true
validates :description, presence:true
validates :gender, presence:true
validates :blood_type, presence:true
validate :age_10_or_older

  def age_10_or_older
    if self.d_o_b
    errors.add(:d_o_b, 'You must be over 10 years of age.') if self.d_o_b > 10.years.ago.to_date.to_s
    end
  end

include Workflow
workflow do
  state :waiting do
    event :check, transition_to: :checked
    event :xray, transition_to: :xrayed
    event :surgery, transition_to: :surgeryed
    event :leave, transition_to: :leaving
  end

  state :checked do
    event :wait, transition_to: :waiting
    event :xray, transition_to: :xrayed
    event :surgery, transition_to: :surgeryed
    event :pay, transition_to: :paying

  end

  state :xrayed do
    event :wait, transition_to: :waiting
    event :check, transition_to: :checked
    event :surgery, transition_to: :surgeryed
    event :pay, transition_to: :paying
  end 

  state :surgeryed do
    event :wait, transition_to: :waiting
    event :check, transition_to: :checked
    event :xray, transition_to: :xrayed
    event :pay, transition_to: :paying
  end

  state :paying do
    event :leave, transition_to: :leaving
  end

  state :leavng 
end
end
