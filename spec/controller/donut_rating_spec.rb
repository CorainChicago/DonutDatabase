require 'rails_helper'

RSpec.describe DonutRatingsController, :type => :controller do 

  let!(:rating) { DonutRating.create!(score: 4, description: Faker::Lorem.sentence, user_id: 1, donut_shop_id: 1)}

  describe "POST #create" do 

    context "when invalid params are passed" do
      it "the donut rating is not saved" do
        expect{ (post :create, donut_rating: { description: Faker::Lorem.sentence, donut_shop_id: 1, donut_id: 1 }) }.to change(DonutRating, :count).by(0)
      end
    end
  end
end
