class Donut < ActiveRecord::Base
  has_many :donut_ratings
  belongs_to :donut_shop
  accepts_nested_attributes_for :donut_shop

  validate
end
