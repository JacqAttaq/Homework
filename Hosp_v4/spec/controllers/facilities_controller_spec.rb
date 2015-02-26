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
  end
end 

