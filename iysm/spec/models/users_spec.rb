require 'rails_helper'


RSpec.describe User, type: :model do
  subject do
    FactoryGirl.create(:user)
  end

  it "should have name" do
    expect(subject.name).to eq("Alex Keaton")
  end

  it "should not have name" do
    expect(subject.name).not_to eq(nil)
    expect(subject.name).not_to eq("Al Utah")
  end

  it "should have github name" do
    expect(subject.github_name).to eq("AKeaton")
    expect(subject.github_name).not_to eq(nil)
  end

  it "should not have github name" do
    expect(subject.github_name).not_to eq(nil)
  end

  it "should have false admin status" do
    expect(subject.admin_status).to eq(false)
  end

  it "should have an email address" do
    expect(subject.email).to eq("test@test.com")
    expect(subject.email).not_to eq(nil)
    expect(subject.email).not_to eq("nest@best.com")
  end
end