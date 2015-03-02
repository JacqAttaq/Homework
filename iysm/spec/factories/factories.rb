FactoryGirl.define do
  factory :user do
    name "Alex Keaton"
    github_name "AKeaton"
    admin_status false
    email "test@test.com"
    password "password"
  end

  factory :course do
    name "Web Design"
    description "Lorem ipsum"
  end

  factory :location do
    name "Palmetto"
    city "Charleston"
    state "SC"
  end

  factory :assignment do
    name "Project 1"
    requirements "Build an app"
  end

  factory :submission do
    name "HW"
    content "Code"
    workflow_state "incomplete"
  end
end