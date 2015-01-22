class Patient < ActiveRecord::Base

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
    errors.add if self.d_o_b > 10.years.ago.to_date.to_s
    end
  end
end
