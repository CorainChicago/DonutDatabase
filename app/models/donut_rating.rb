class DonutRating < ActiveRecord::Base
  belongs_to :donut
  belongs_to :user
end
