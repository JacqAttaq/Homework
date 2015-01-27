class Doctor < ActiveRecord::Base
  belongs_to :doctorable, ploymorphic: true
end
