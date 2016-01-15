require 'rails_helper'

RSpec.describe DonutsController, :type => :controller do 

  let(:donut) { Donut.new }

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
      expect {post :create, donut: {first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Lorem.word} }.to change(User,:count).by(+1)
    end
  end
end