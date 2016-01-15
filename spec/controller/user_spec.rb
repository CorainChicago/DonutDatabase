require 'rails_helper'

RSpec.describe UsersController, :type => :controller do 
  let(:user){ User.new }

  describe "GET #new" do
    
    it "creates a new user" do
      get :new
      expect(assigns(:user).id).to eq nil
    end
  end

  describe "POST #create" do
      
    it "creates a new User when valid params are passed" do 
      expect {post :create, user: {first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Lorem.word} }.to change(User,:count).by(+1)
    end
    
    it "renders User #new when a new User lacks an email address" do 
      post :create, user: {first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: nil, password: Faker::Lorem.word} 
      expect(response).to render_template(:new)
    end
  end
end