require 'rails_helper'

describe CoursesController do
  let(:course) {
    FactoryGirl.create(:course)
  }
describe 'GET #index' do
  it 'should get all course objects' do
    get :index
    expect(assigns(:courses)).not_to eq(nil)
  end
end

describe 'GET #new' do
  it 'should initialize a new course' do
    get :new
    expect(assigns(:course).class).to eq Course
    expect(assigns(:course).new_record?).to eq(true)
  end
end

describe 'POST #create' do
it 'should create a course' do
      
      post :create, course: {name: "Front End", description: "Front end pretty"}
      expect(assigns(:course).class).to eq Course
      expect(assigns(:course).class).not_to eq (nil)
    end  
end

describe 'GET #edit' do
end

describe 'PATCH #update' do
end

describe 'DELETE #destroy' do
  it 'should delete a course' do
      delete :destroy, id: course.id
      expect(assigns(:course)).to eq course
    end 
end
end