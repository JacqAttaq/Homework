task create_med: :environment do
  15.times do
    new_med = Med.create!({
      name: Faker::Lorem.word,
      dose: Faker::Number.number(3),
      description: Faker::Lorem.words(5,true)
      })
  end
end