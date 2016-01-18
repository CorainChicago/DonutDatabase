require 'rails_helper'

RSpec.describe DonutShopsController, :type => :controller do

  let!(:shop) { DonutShop.create!(name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url, donut_id: 1 ) }

  describe "GET #show" do

    it "renders the index page" do 
      get :show, id: shop.id
      expect(response).to render_template(:show)
    end

    it "renders the index page" do 
      get :show, id: 1
      expect(response.status).to eq(200)
    end
  end

  describe "POST #create" do
      it "increases the donut shop count" do
        expect {post :create, donut: {name: Faker::Lorem.word, description: Faker::Lorem.sentence, address: Faker::Address, phone: Faker::PhoneNumber.phone_number } }.to change(Donut,:count).by(+1)
      end
    end
end