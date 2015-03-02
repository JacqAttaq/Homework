require 'rails_helper'

describe AssignmentsController do
  let(:assignment) {
    FactoryGirl.create(:assignment)
  }

describe 'GET #index' do
  it 'should get all assignment objects' do
    get :index
    expect(assigns(:assignments)).not_to eq(nil)
  end
end

describe 'GET #new' do
    it 'should initialize a new assignment' do
      get :new
      expect(assigns(:assignment).class).to eq Assignment
      expect(assigns(:assignment).new_record?).to eq(true)
    end 
end

describe 'POST #create' do
it 'should create a assignment' do
      
      post :create, assignment: {name: "HW2", requirements: "Code during headstand"}
      expect(assigns(:assignment).class).to eq Assignment
      expect(assigns(:assignment).class).not_to eq (nil)
    end
end

describe 'GET #edit' do
end

describe 'PATCH #update' do
end

describe 'DELETE #destroy' do
   it 'should delete a assignment' do
      delete :destroy, id: assignment.id
      expect(assigns(:assignment)).to eq assignment
    end
end

end