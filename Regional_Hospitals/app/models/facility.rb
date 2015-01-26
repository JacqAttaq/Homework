class Facility < ActiveRecord::Base
  has_many :patients, dependent: :destroy
  has_many :meds
end
