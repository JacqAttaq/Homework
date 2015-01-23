class Patient < ActiveRecord::Base

belongs_to :hospital
has_many :meds

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
end
