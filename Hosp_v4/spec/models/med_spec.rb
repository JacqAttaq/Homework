require 'rails_helper'

RSpec.describe Med, type: :model do
  subject do
    Med.new({
      name: "Morphine",
      dose: "30mg",
      description: "Painkiller"
      })
  end

it "should have doseage" do
  expect(subject.dose).to eq("30mg")
end

it "should not have doseage" do
  expect(subject.dose).not_to eq(nil)
end

it "should have name" do
  expect(subject.name).to eq("Morphine")
end

it "should not have name" do
  expect(subject.name).not_to eq(nil)
end

it "should have all med information" do
  expect(subject.name).to eq("Morphine")
  expect(subject.dose).to eq("30mg")
  expect(subject.description).to eq("Painkiller")
end

it "should not have all med information" do
  expect(subject.name).not_to eq(nil)
  expect(subject.dose).not_to eq(nil)
  expect(subject.description).not_to eq(nil)
end
end