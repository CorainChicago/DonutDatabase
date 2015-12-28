class DonutShop < ActiveRecord::Base
  has_many :donut_ratings
  has_many :donuts, through: :donut_ratings


end
