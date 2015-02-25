require 'rails_helper'

RSpec.describe Facility, type: :model do
  subject do
    Facility.new ({
      name: "Mayo Clinic",
      address: "3726 West St.",
      zip: "34563",
      })
  end


  it "should have a name" do
    facility = Facility.new
    facility.name = "Mayo Clinic"
    expect(facility.name).to eq("Mayo Clinic") 
  end

  it "should not have a name" do 
    facility = Facility.new
    expect(facility.name).not_to eq("Mayo Clinic")
  end
  
  it "should have an address" do
    expect(subject.address).to eq("3726 West St.")
    expect(subject.zip).to eq("34563")
  end
end