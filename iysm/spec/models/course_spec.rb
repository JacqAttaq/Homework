require 'rails_helper'

RSpec.describe Course, type: :model do
  subject do
    FactoryGirl.create(:course)
  end

  it "should have a name" do
    expect(subject.name).to eq("Web Design")
  end

  it "should not have a name" do
    expect(subject.name).not_to eq(nil)
  end

  it "should have a description" do
    expect(subject.description).to eq("Lorem ipsum")
    expect(subject.description).not_to eq(nil)
  end

  it "should not have a description" do
    expect(subject.description).not_to eq(nil)
    expect(subject.description).not_to eq("Bacon")
  end


end