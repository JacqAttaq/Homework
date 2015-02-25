require 'rails_helper'

RSpec.describe Course, type: :model do
  subject do
    Course.new({
      name: "Web Design",
      description: "Lorem ipsum"
      })
  end

  it "should have a name" do
    expect(subject.name).to eq("Web Design")
  end

  it "should not have a name" do
    expect(subject.name).not_to eq(nil)
  end

  it "should have a description" do
    expect(subject.description).to eq("Lorem ipsum")
  end

  it "should have a description" do
    expect(subject.description).not_to eq(nil)
  end


end