require 'rails_helper'

RSpec.describe Submission, type: :model do
  subject do
    Submission.new({
      name: "HW",
      content: "Code"
      })
  end

  it "should have content" do
    expect(subject.content).to eq("Code")
  end

  it "should not have content" do
    expect(subject.content).not_to eq(nil)
  end

end
