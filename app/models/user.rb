class User < ActiveRecord::Base
  has_secure_password
  has_many  :donut_ratings
  has_many :rated_donuts, through: :donut_ratings, foreign_key: :donut
  has_many :rated_donut_shops, through: :donut_ratings, foreign_key: :donut_shop
  validates :email,:presence => true
  validates_confirmation_of :password, :message => "should match confirmation"


end
