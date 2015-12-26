class User < ActiveRecord::Base
  has_secure_password
  validates_confirmation_of :password, :message => "should match confirmation"


end
