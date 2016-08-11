module SpecTestHelper
  def login_user
    user = User.create(first_name: "Charlie", last_name: "Cat", email: "test@cat.com", password: "password")
    session[:user_id] = user.id
  end
end

RSpec.configure do |config|
  config.include SpecTestHelper, type: :controller
end