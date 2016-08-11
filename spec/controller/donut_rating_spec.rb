require 'rails_helper'

RSpec.describe DonutRatingsController, :type => :controller do 

  describe "POST #create" do 
    context "when valid params are passed" do
      it "increases the number of ratings by 1" do
        rating = { score: 5, description: Faker::Lorem.sentence, donut_shop_id: 1, donut_id: 1, user_id: 1 } 
        expect{DonutRating.create(rating)}.to change {DonutRating.count}.from(0).to 1 
      end
      it "redirects to the donut" do
         user = User.create(first_name: "Charlie", last_name: "Cat", email: "test@cat.com", password: "password")
        session[:user_id] = user.id
        donut = Donut.create!(name: Faker::Lorem.word, occasion: "Splurge", description: Faker::Lorem.sentence, type_of_donut: "Yeast", donut_shop_id: 1) 
        rating = { score: 5, description: Faker::Lorem.sentence, donut_shop_id: 1, donut_id: donut.id, user_id: 1 } 
        post :create, { :donut_rating => rating, :donut_id => donut.id, :user_id => user.id } 

        # expect(response).to be_successful
        expect(response).to redirect_to("/donuts/#{assigns(:donut).id}")
      end
    end

    context "when invalid params are passed" do
      it "the donut rating is not saved" do
        donut =  Donut.create(name: Faker::Lorem.word, occasion: "Splurge", description: Faker::Lorem.sentence, type_of_donut: "Yeast", donut_shop_id: 1) 
        expect { post :create, donut_id: donut.id,  donut_rating: {description: Faker::Lorem.sentence, donut_shop_id: 1, donut_id: 1 } }.to_not change(DonutRating, :count)
      end
    end
  end
end
