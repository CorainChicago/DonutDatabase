require 'rails_helper'

describe DonutRating do 
  let(:donut_rating) { DonutRating.new(score: 5, description: Faker::Lorem.sentence, user_id: 1, donut_shop_id: 1)}
  
  describe "validations" do 
    
    it "throws no errors when Donut Rating is valid" do 
      donut_rating.valid?
      expect(donut_rating.errors.messages.count).to eq 0
    end

    it "throws an error when the donut_shop_id is missing" do
      donut_rating2 = DonutRating.new(score: 5, description: Faker::Lorem.sentence, user_id: 1)
      donut_rating2.valid?
      expect(donut_rating2.errors.messages[:donut_shop_id][0]).to eq "can't be blank"
    end
  end
end