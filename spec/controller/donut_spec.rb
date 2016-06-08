require 'rails_helper'

RSpec.describe DonutsController, :type => :controller do 

  let!(:donut) { Donut.new }

  describe "GET #index" do

    it "renders the index page" do 
      get :index
      expect(response).to render_template(:index)
    end

    it "renders the index page" do 
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "POST #create" do
    it "increases the donut count" do
      expect {post :create, donut: {name: Faker::Lorem.word, occasion: "Splurge", description: Faker::Lorem.sentence, type_of_donut: "Yeast", donut_shop_id: 1} }.to change(Donut,:count).by(1)
    end
  end
end