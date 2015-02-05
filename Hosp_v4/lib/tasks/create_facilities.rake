task create_facility: :environment do
  15.times do
    new_facility = Facility.create!({
      name: Faker::Company.name,
      address: Faker::Address.street_address,
      zip: Faker::Address.zip
    })
  end
  
end


# add a 100 clinic_id: (1..100)