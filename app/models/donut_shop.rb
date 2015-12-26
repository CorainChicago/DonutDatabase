class DonutShop < ActiveRecord::Base
  has_many :donuts
  has_many :donut_ratings, through: :donuts
end
