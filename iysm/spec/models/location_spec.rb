require 'rails_helper'

RSpec.describe Location, type: :model do |variable|
  subject do
    FactoryGirl.create(:location)
  end

  it "should have all location information" do
    expect(subject.name).to eq("Palmetto")
    expect(subject.city).to eq("Charleston")
    expect(subject.state).to eq("SC")
    expect(subject.state).not_to eq(nil)
  end

  it "should have a location name" do
    expect(subject.name).to eq("Palmetto")
    expect(subject.name).not_to eq(nil)
  end

  it "should have a city" do
    expect(subject.city).to eq("Charleston")
    expect(subject.city).not_to eq(nil)
  end

  it "should NOT have a city name" do
    expect(subject.city).not_to eq("Atlanta")
    expect(subject.city).not_to eq(nil)
  end

  it "should have a state" do
    expect(subject.state).to eq("SC")
    expect(subject.state).not_to eq(nil)
  end
end