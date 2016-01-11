require 'rails_helper'


describe "Donut" do
  describe "validations" do
    it "is valid without all of the fields" do
      donut = Donut.create(name: "Oatmeal", description: "It tastes good.", occassion: "Value", type_of_donut: "Yeast", donut_shop_id: 1)
      p donut.errors
      expect(donut.errors.count).to eq 0
    end
  end
end