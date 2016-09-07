class Api::V1::SessionSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :authentication_token
end
