class DonutRating < ActiveRecord::Base
  validates :user_id, :donut_id, :score, :description, :donut_shop_id, :presence => true

  def self.average_rating(donut_id)
    ratings = where(donut_id: donut_id)
    sum(ratings) / ratings.length
  end

  private
  def self.sum(ratings)
    ratings.inject (0) {|sum, r| sum + r.score } 
  end
end