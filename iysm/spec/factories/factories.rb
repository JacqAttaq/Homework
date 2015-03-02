FactoryGirl.define do
  factory :user do
    name "Alex Keaton"
    github_name "AKeaton"
    admin_status false
    email "test@test.com"
    password "password"
  end

end