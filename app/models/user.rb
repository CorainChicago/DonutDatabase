class User < ActiveRecord::Base
  has_secure_password
  has_many  :donut_ratings
  has_many :rated_donuts, through: :donut_ratings, foreign_key: :donut
  has_many :rated_donut_shops, through: :donut_ratings, foreign_key: :donut_shop
  validates :email, :first_name, :last_name, :password, :presence => true
  validates_confirmation_of :password, :message => "They need to match"

   before_create :generate_authentication_token

  private
  def generate_authentication_token
    loop do
      self.authentication_token = SecureRandom.base64(64)
      break unless User.find_by(authentication_token: authentication_token)
    end
  end
end
