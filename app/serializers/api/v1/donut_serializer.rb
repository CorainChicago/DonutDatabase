class Api::V1::DonutSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :occasion, :type_of_donut, :picture
  has_many :donut_ratings
  belongs_to :donut_shop

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end
end
