require 'rails_helper'

describe FacilitiesController do
  let(:facility) {
    Facility.create({name: "MUSC", address: "Charleston", zip: "22803"})
  }

  describe 'GET #index' do
    let!(:facility1) {
      Facility.create({name:"East Hospital",address:"Marion",zip:"22800"})
    }
    let!(:facility2) {
      Facility.create({name:"West Hospital",address:"Greenville",zip:"22801"})
    }
    let!(:facility3) {
      Facility.create({name:"North Hospital",address:"Charlotte",zip:"22802"})
    }
    it 'should not return any facilities' do
      get :index, q: 'asdf', id: facility
      expect(assigns(:facilities)).not_to eq(nil)
      expect(assigns(:facilities)).to eq([])
    end

    it 'should return only 1 facility' do
      get :index, q: 'West'
      expect(assigns(:facilities)).not_to eq(nil)
      expect(assigns(:facilities)).to eq([facility2])
    end

    it 'should return 3 facilities' do
      get :index, q: 'Hospital'
      expect(assigns(:facilities)).not_to eq(nil)
      expect(assigns(:facilities).length).to eq(3)
      expect(assigns(:facilities)).to include(facility3)
      expect(assigns(:facilities)).to include(facility1)
    end

    it 'should return all restaurants' do
      get :index
      expect(assigns(:facilities)).not_to eq(nil)
      expect(assigns(:facilities).length).to eq(3)
      expect(assigns(:facilities)).to include(facility3)
      expect(assigns(:facilities)).to include(facility1)
    end
  end

  describe 'GET #new' do
    it 'should initialize a new facility' do
      get :new
      expect(assigns(:facility).class).to eq Facility
      expect(assigns(:facility).new_record?).to eq(true)
    end
  end

  describe 'POST #create_doctor' do
    it 'should create a doctor' do
      post :create_doctor, id: facility, doctor: { name: "Dr. Suess", specialty: "Cartoons"}
      expect(assigns(:facility)).to eq facility
      expect(assigns(:doctor).class).to eq Doctor
      expect(assigns(:doctor).doctorable_id).to eq facility.id
      expect(assigns(:doctor).doctorable_type).to eq "Facility"
      expect(response).to redirect_to facility_path(facility)
    end
  end 

  describe 'GET #show' do
    it 'should show a facility object' do
      get :show, id: facility
      expect(assigns(:facility)).to eq facility
      expect(assigns(:doctor).new_record?).to eq(true)
      expect(assigns(:doctor).class).to eq(Doctor)
    end  
  end

  describe 'POST #create' do
    it 'should create a facility' do
      post :create, facility: {name: "MUSC", address: "Charleston", zip: "22803"}
      expect(assigns(:facility).class).to eq Facility
    end
  end
end




