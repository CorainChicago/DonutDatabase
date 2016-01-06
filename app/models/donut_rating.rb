class DonutRating < ActiveRecord::Base
  belongs_to :donut
  belongs_to :user
  belongs_to :donut_shop

  validates :score, :description, :presence => true
  validates :description, :uniqueness => true
end
