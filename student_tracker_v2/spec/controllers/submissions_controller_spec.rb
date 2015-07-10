require 'rails_helper'

describe SubmissionsController do
  let(:assignment) {
    FactoryGirl.create(:assignment)
  }
  let(:submission) {
    FactoryGirl.create(:submission)
  }
 
describe 'GET #index' do
  it 'should get the assignments submission' do
    get :index, assignment_id: assignment
    expect(assigns(:assignment)).to eq assignment
    expect(assigns(:submission)).to eq(nil)
  end
end

describe 'GET #new' do
end

describe 'POST #create' do
end

describe 'GET #edit' do
end

describe 'PATCH #update' do
end

describe 'DELETE #destroy' do
  
end
end