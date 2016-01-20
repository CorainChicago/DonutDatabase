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
  
    it "renders the show page" do 
     shop = DonutShop.create(name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url, donut_id: 1)
      get :show, { :id => shop.to_param }
      expect(response.status).to eq(200)
    end
  end


  # The test below need work. 

  describe 'POST #create' do
    context 'with valid attributes' do

      it "increases the donut shop count" do
        donut_shop_attributes = { name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: "333-333-3983", website: Faker::Internet.url, donut_id: 1}

        expect { 
          post :create, donut_shop: donut_shop_attributes
          }.to change { DonutShop.count }.from(0).to 1
      end
    end
    context 'with non-valid params' do 
      donut_shop_attributes = { name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, website: Faker::Internet.url }

      it "renders a new donut shop form" do  
          post :create, donut_shop: donut_shop_attributes
          expect(response).to render_template(:new)
      end

    end
  end
end
 
