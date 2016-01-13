require 'rails_helper'

RSpec.describe UsersController, :type => :controller do 
   let(:user){ User.new }

  describe "GET #new" do
    
    it "creates a new user" do
      get :new
      expect(assigns(:user).id).to eq nil
    end
  end
end