class DonutShop < ActiveRecord::Base
  has_many :donut_ratings
  has_many :donuts, through: :donut_ratings

  validates :name, :description, :address, :phone, :website, presence: true
  validates :address, :phone, uniqueness: true

end
