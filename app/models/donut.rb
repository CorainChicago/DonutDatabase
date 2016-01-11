class Donut < ActiveRecord::Base
  has_many :donut_ratings
  belongs_to :donut_shop
  accepts_nested_attributes_for :donut_shop

   validates :name, :description, :occassion, :type_of_donut, :donut_shop_id, :presence => true
    validates :name, uniqueness: { scope: :donut_shop_id } 
end
