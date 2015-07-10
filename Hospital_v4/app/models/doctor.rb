class Doctor < ActiveRecord::Base
  belongs_to :doctorable, polymorphic: true

    SPECIALTIES =[
    "Allergy",
    "Oncology",
    "Endocronologist",
    "Emergeny",
    "Intensive Care",
    "Podiatry",
    "Geriatrics",
    "Surgery"
  ]
end
