class DonutRating < ActiveRecord::Base
  belongs_to :donut
  belongs_to :user
  belongs_to :donut_shop

  validates :score, :description, :user_id, :donut_shop_id, presence: true

  def average_rating(donut_id)
    
  end

end
