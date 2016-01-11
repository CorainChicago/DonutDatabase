require 'rails_helper'


describe "Donut" do
  describe "validations" do
    it "is valid without all of the fields" do
      donut = Donut.create(name: "Oatmeal", description: "It tastes good.", occassion: "Value", type_of_donut: "Yeast", donut_shop_id: 1)
      expect(donut.errors.count).to eq 0
    end
    it "only allows one donut name per shop" do 
      donut = Donut.create(name: "Oatmeal", description: "It tastes good.", occassion: "Value", type_of_donut: "Yeast", donut_shop_id: 1)
      donut2 = Donut.create(name: "Oatmeal", description: "It tastes good.", occassion: "Value", type_of_donut: "Yeast", donut_shop_id: 1)
      p donut2.errors
      expect(donut2.errors.messages).to eq :name=>["has already been taken"]
    end
  end
end