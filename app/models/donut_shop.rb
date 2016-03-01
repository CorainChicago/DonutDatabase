class DonutShop < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  has_many :donut_ratings
  has_many :donuts, through: :donut_ratings

  validates :name, :description, :address, :phone, :website, presence: true
  validates :address, :phone, uniqueness: true


end
