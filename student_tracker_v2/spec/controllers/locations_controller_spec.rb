require 'rails_helper'

describe LocationsController do
  let(:location) {
    FactoryGirl.create(:location)
  }
describe 'GET #index' do
  it 'should get all locationsobjects' do
    get :index
    expect(assigns(:locations)).not_to eq(nil)
  end
end

describe 'GET #new' do
     it 'should initialize a new location' do
      get :new
      expect(assigns(:location).class).to eq Location
      expect(assigns(:location).new_record?).to eq(true)
    end
end

describe 'POST #create' do
it 'should create a location' do
      
      post :create, location: {name: "Piedmont", city: "Charlotte", state: "NC"}
      expect(assigns(:location).class).to eq Location
      expect(assigns(:location).class).not_to eq (nil)
    end
end

describe 'GET #edit' do
end

describe 'PATCH #update' do
end

describe 'DELETE #destroy' do
   it 'should delete a location' do
      delete :destroy, id: location.id
      expect(assigns(:location)).to eq location
    end
end
end