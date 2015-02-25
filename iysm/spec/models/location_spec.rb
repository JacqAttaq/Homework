require 'rails_helper'

RSpec.describe Location, type: :model do |variable|
  subject do
    Location.new ({
      name: "Palmetto",
      city: "Charleston",
      state: "SC"
      })
  end

  it "should have all location information" do
    expect(subject.name).to eq("Palmetto")
    expect(subject.city).to eq("Charleston")
    expect(subject.state).to eq("SC")
  end
end