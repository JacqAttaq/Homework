require 'rails_helper'

describe MedsController do
  let(:med) {
  FactoryGirl.create(:med)  
  }

  describe 'GET #index' do
    let!(:med1) {
      Med.create({name:"loracet", dose:"20mg", description:"Painkiller"})
    }
    let!(:med1) {
      Med.create({name:"Valium", dose:"20mg", description:"Painkiller"})
    } 
    let!(:med1) {
      Med.create({name:"Aderol", dose:"20mg", description:"ADHD"})
    }
    it 'should not return any meds' do
      get :index, q: 'asdf', id: med
      expect(assigns(:meds)).not_to eq(nil)
      expect(assigns(:meds)).to eq([])
    end
  end
end