require 'rails_helper'

RSpec.describe DonutShopsController,  :type => :controller do
  render_views


  describe "GET #index" do

    it "renders the index page" do 
      get :index
      expect(response).to render_template(:index)
    end
  end
  
  describe "Get #show" do   

  let(:shop) { DonutShop.create!(name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url, donut_id: 1 ) }

    it "renders the show page" do 
      get :show, { :id => shop.to_param }
      expect(response.status).to eq(200)
    end
  end

  

  # The test below need work. 

  describe 'POST #create' do
    context 'with valid attributes' do
  #     it 'creates a new donut shop' do
  #       post :create, donut_shop: attributes_for(:donut_shop)
  #       expect(DonutShop.count).to eq(1)
  #     end

      it "increases the donut shop count" do

        donut_shop_attributes = { name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: "333-333-3983", website: Faker::Internet.url, donut_id: 1}

        expect { 
          post :create, donut_shop: donut_shop_attributes
          }.to change { DonutShop.count }.from(0).to 1
      end
    end
  end
end
 
