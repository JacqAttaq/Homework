class Facility < ActiveRecord::Base
  has_many :patients
  has_many :meds
end
