require 'rails_helper'

RSpec.describe DonutShopsController,  :type => :controller do
  render_views

  let!(:shop) { DonutShop.create!(name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url, donut_id: 1 ) }

  describe "GET #index" do

    it "renders the index page" do 
      get :index
      expect(response).to render_template(:index)
    end

    it "renders the index page" do 
      get :show, { :id => shop.to_param }
      expect(response.status).to eq(200)
    end
  end

  # The test below need work. 

  # describe 'POST #create' do
  #   context 'with valid attributes' do
  #     it 'creates a new donut shop' do
  #       post :create, donut_shop: attributes_for(:donut_shop)
  #       expect(DonutShop.count).to eq(1)
  #     end

  #     it "increases the donut shop count" do
  #       post :create, donut_shop: { name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: "333-333-3333", website: Faker::Internet.url, donut_id: 1 }
  #       expect(assigns(:donut_shop)).to be_an_instance_of(DonutShop)
  #     end
  #   end
  # end
end
 
