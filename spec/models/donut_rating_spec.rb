require 'rails_helper'

describe DonutRating do 
  let(:donut_rating) { DonutRating.create!(score: 5, description: Faker::Lorem.sentence, user_id: 1, donut_shop_id: 1, donut_id: 1)}
  
  describe "validations" do 
    
    it "throws no errors when Donut Rating is valid" do 
      donut_rating.valid?
      expect(donut_rating.errors.messages.count).to eq 0
    end

    it "throws an error when the donut_shop_id is missing" do
      donut_rating_2 = DonutRating.new(score: 5, description: Faker::Lorem.sentence, user_id: 1, donut_id: 1)
      donut_rating_2.valid?
      expect(donut_rating_2.errors).to have_key (:donut_shop_id)
    end
  end

  describe "average_rating" do
    it "returns the average rating" do 
      DonutRating.create!(score: 3, description: Faker::Lorem.sentence, user_id: 1, donut_shop_id: 1, donut_id: 2)
      DonutRating.create!(score: 4, description: Faker::Lorem.sentence, user_id: 1, donut_shop_id: 1, donut_id: 2)
      DonutRating.create!(score: 5, description: Faker::Lorem.sentence, user_id: 1, donut_shop_id: 1, donut_id: 2)
      expect(DonutRating.average_rating(2)).to eq 4
    end 
  end
end