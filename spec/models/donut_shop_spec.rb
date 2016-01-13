require 'rails_helper'

describe DonutShop do
  let(:donut_shop) { DonutShop.new }
  let(:donut_shop_complete){ DonutShop.new(name: Faker::Company.name, description: "A test donut shop", address: Faker::Address.street_address, phone: "333-333-3333", website: Faker::Internet.url) }
  
  describe "validations" do

    it "validates a complete donut shop" do
      donut_shop_complete.valid?
      expect(donut_shop_complete.errors.messages.count).to eq 0
    end

    it "throws an error when a required part of object is missing" do
      donut_shop.valid?
      expect(donut_shop.errors.messages.count).to eq 5
    end

    it "throws and error when the address is the same" do
      donut_shop_complete.save!
      donut_shop2 = DonutShop.new(name: Faker::Company.name, description: "A test donut shop", address: Faker::Address.street_address, phone: "333-333-3333", website: Faker::Internet.url) 
      donut_shop2.valid?
      expect(donut_shop2.errors.messages[:phone][0]).to eq "has already been taken"
    end

  end
end