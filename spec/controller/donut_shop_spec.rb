require 'rails_helper'

RSpec.describe DonutShopsController,  :type => :controller do
  render_views

  let!(:shop) { DonutShop.create!(name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url) }
  let!(:donut)  { Donut.create!(name: Faker::Lorem.word, occasion: "Splurge", description: Faker::Lorem.sentence, type_of_donut: "Yeast", donut_shop_id: 1)}



  describe "GET #index" do

    it "renders the index page" do 
      get :index
      expect(response).to render_template(:index)
    end
  end
  
  describe "Get #show" do   
  
    it "renders the show page" do 
      get :show, { :id => shop.to_param }
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do

      it "increases the donut shop count" do
        donut_shop_attributes = { name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url}
        expect { 
          post :create, donut_shop: donut_shop_attributes
          }.to change{ DonutShop.count }.from(1).to 2
      end
    end

    context 'with invalid params' do 
      donut_shop_attributes = { name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address.street_address, website: Faker::Internet.url }

      it "renders a new donut shop form" do  
          post :create, donut_shop: donut_shop_attributes
          expect(response).to render_template(:new)
      end

    end
  end
end
 
