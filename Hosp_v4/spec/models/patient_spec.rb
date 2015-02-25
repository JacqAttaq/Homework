require 'rails_helper'

RSpec.describe Patient, type: :model do
  subject do
    Patient.new({
      first_name: "Alice",
      last_name: "Cooper",
      d_o_b: "1999-01-02",
      description: "Heart Attack",
      gender: "Female",
      blood_type: "A+",
      })
  end

  it "should have full name" do
    expect(subject.first_name).to eq("Alice")
    expect(subject.last_name).to eq("Cooper")
  end

  it "should not have a full name" do
    expect(subject.first_name).not_to eq(nil)
    expect(subject.last_name).not_to eq(nil)
  end

  it "should have complete patient description" do
    expect(subject.d_o_b).to eq("1999-01-02")
    expect(subject.description).to eq("Heart Attack")
    expect(subject.gender).to eq("Female")
    expect(subject.blood_type).to eq("A+")
  end
end