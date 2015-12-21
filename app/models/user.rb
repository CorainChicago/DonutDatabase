class User < ActiveRecord::Base

  validates_confirmation_of :password, :message => "should match confirmation"
end
