require 'rails_helper'

RSpec.describe Submission, type: :model do
  subject do
    FactoryGirl.create(:submission)
  end

  it "should have content" do
    expect(subject.content).to eq("Code")
    expect(subject.content).not_to eq(nil)
  end

  it "should not have content" do
    expect(subject.content).not_to eq(nil)
    expect(subject.content).not_to eq("Gibberish")
  end

  it "should have a name" do
    expect(subject.name).to eq("HW")
    expect(subject.name).not_to eq(nil)
  end

  it "should not have a name" do
    expect(subject.name).not_to eq(nil)
    expect(subject.name).not_to eq("Veronica")
  end
end
