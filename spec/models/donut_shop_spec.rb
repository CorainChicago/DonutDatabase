require 'rails_helper'

describe DonutShop do
  let(:donut_shop) { DonutShop.new }
  let(:donut_shop_complete){ DonutShop.new(name: Faker::Company.name, description: "A test donut shop", address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url) }
  
  describe "validations" do
    it "validates a complete donut shop" do
      expect(donut_shop_complete.errors.messages.count).to eq 0
    end
  end
end