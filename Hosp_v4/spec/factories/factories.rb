FactoryGirl.define do
  factory :facility do
    name "MUSC"
    address "Charleston"
    zip "29400"
  end

  factory :patient do
    first_name "Regina"
    last_name "Philange"
    d_o_b "2000-12-1"
    description "Hypothermia"
    gender "Female"
    blood_type "A+"
  end

  factory :med do
    name "Oxycodone"
    dose "15mg"
    description "Opiate"
  end

  factory :doctor do
    name "Dr. Danny Castellano"
    specialty "Ob/gyn"
  end

  factory :facility_with_patients do
    transient do
      patient_count 3
    end
  end
end