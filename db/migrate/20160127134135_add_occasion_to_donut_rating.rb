class AddOccasionToDonutRating < ActiveRecord::Migration
  def change
    add_column :donut_ratings, :occasion, :string
  end
end
