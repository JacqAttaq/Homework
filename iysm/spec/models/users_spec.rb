require 'rails_helper'


RSpec.describe User, type: :model do
  subject do
    User.new ({
      name: "Jane Doe",
      github_name: "StudentZero",
      admin_status: false
      })
  end

  it "should have name" do
    expect(subject.name).to eq("Jane Doe")
  end

  it "should not have name" do
    expect(subject.name).not_to eq(nil)
  end

  it "should have github name" do
    expect(subject.github_name).to eq("StudentZero")
  end

  it "should have github name" do
    expect(subject.github_name).not_to eq(nil)
  end
  it "should not have github name" do
    expect(subject.github_name).not_to eq(nil)
  end

  it "should have false admin statis" do
    expect(subject.admin_status).to eq(false)
  end
end