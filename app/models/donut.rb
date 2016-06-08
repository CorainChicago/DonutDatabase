class Donut < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  has_many :donut_ratings
  belongs_to :donut_shop
  accepts_nested_attributes_for :donut_shop
  # accepts_nested_attributes_for :donut_ratings, allow_destroy: true

  validates :name, :description, :donut_shop_id, :presence => true
  validates :name, uniqueness: { scope: :donut_shop_id } 

end
