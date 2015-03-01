require 'rails_helper'

describe PatientsController do 
let(:facility) {
  FactoryGirl.create(:facility)
} 
let(:patient) {
  FactoryGirl.create(:patient)
}
 
  # describe 'GET #show' do
  #   it 'should show a patient' do
  #     get :show, id: facility, id: patient
  #     expect(assigns(:patients)).to eq patient
  #   end
  # end

  # describe 'GET #show' do
  #   it 'should show a patient' do
  #     get :show, id: facility, id: patient
  #     expect(assigns(:facility)).to eq facility
  #     expect(assigns(:patients)).to eq patient
  #   end
  # end
end